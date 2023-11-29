-- Baseado nos procedures: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Verifica se algum carro que esta parado (nao esta alugado) precisa de manutencao (criterio: ter mais de 10.000km de diferenca da ultima manutencao)
CREATE PROCEDURE CarrosQuePrecisamDeManutencao()
BEGIN
    SELECT placa, marca, modelo, cor, ano, v.km FROM veiculo v
    INNER JOIN manutencao m
    ON v.chassi = m.veiculo_chassi
    WHERE v.km - m.km >= 10000;
END;

--@block | 2-> Envia todos os carros que precisam de manutencao para manutencao, removendo-os da tabela precisa_manutencao e adicionando-os a tabela manutencao
