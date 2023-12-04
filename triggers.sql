-- Baseado nos triggers: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Quando um aluguel e criado, precisa ser informado o numero de dias do aluguel, o trigger vai usar os dias + a data de retirada para calcular a data_prevista
CREATE TRIGGER dataPrevista BEFORE INSERT ON aluguel
FOR EACH ROW
SET data_prevista = CURDATE() + NEW.dias;

--@block | 2-> Quando um aluguel e criado, precisa ser definido o veiculo, cada veiculo tem um multiplicador que multiplica o valor base da diaria (100 reais), o trigger faz a conta e atualiza o valor_prevista baseado no multiplicador e no numero de dias
CREATE TRIGGER calcularPrecoNovoAluguel BEFORE INSERT ON aluguel a
FOR EACH ROW
BEGIN
    UPDATE aluguel a
    INNER JOIN veiculo v ON v.chassi = a.veiculo_chassi
    SET a.valor_previsto = 100 * v.multiplicador
END

--@block | 3-> Quando uma devolucao e criada, o trigger verifica se o dia da devolucao tem atraso em relacao a data prevista, se tiver, cria uma multa e adiciona ao valor real (multa = dobro da diaria por dia atrasado

--@block | 4-> Quando um novo aluguel e criado, o trigger muda o bool do veiculo alugado para true
CREATE TRIGGER novaDevolucao BEFORE UPDATE ON aluguel
FOR EACH ROW
BEGIN
    IF !(NEW.retirada_status_id <=> OLD.retirada_status_id) THEN
        UPDATE veiculo v
        SET v.alugado = true
        WHERE v.chassi = aluguel.veiculo_chassi
    END IF;
END;

--@block | 5-> Quando uma devolucao e criada, o trigger muda o bool do veiculo devolvido para false
CREATE TRIGGER novaDevolucao BEFORE UPDATE ON aluguel
FOR EACH ROW
BEGIN
    IF !(NEW.devolucao_status_id <=> OLD.devolucao_status_id) THEN
        UPDATE veiculo v
        SET v.alugado = false
        WHERE v.chassi = aluguel.veiculo_chassi
    END IF;
END;
