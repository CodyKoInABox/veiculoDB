-- Baseado nos triggers: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Quando um aluguel e criado, precisa ser informado o numero de dias do aluguel, o trigger vai usar os dias + a data de retirada para calcular a data_prevista

--@block | 2-> Quando um aluguel e criado, precisa ser definido o veiculo, cada veiculo tem um multiplicador que multiplica o valor base da diaria (100 reais), o trigger faz a conta e atualiza o valor_prevista baseado no multiplicador e no numero de dias

--@block | 3-> Quando uma devolucao e criada, o trigger verifica se o dia da devolucao tem atraso em relacao a data prevista, se tiver, cria uma multa e adiciona ao valor real (multa = dobro da diaria por dia atrasado

--@block | 4-> Quando um novo aluguel e criado, o trigger muda o bool do veiculo alugado para true

--@block | 5-> Quando uma devolucao e criada, o trigger muda o bool do veiculo devolvido para false
