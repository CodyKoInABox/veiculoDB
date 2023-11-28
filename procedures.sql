-- Baseado nos procedures: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Verifica se algum carro que esta parado (nao esta alugado) precisa de manutencao (criterio: ter mais de 10.000km de diferenca da ultima manutencao)

--@block | 2-> Envia todos os carros que precisam de manutencao para manutencao, removendo-os da tabela precisa_manutencao e adicionando-os a tabela manutencao
