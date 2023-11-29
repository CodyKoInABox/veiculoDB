-- Baseado nas atualizacoes de tabela: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Aumenta o tamanho do varchar da placa do veiculo (para caso as placas fiquem maiores no futuro)
ALTER TABLE veiculo
MODIFY COLUMN placa VARCHAR(8);

--@block | 2-> Apaga o campo cor dos veiculos (caso nao precisa mais saber a cor)
ALTER TABLE veiculo
DROP COLUMN cor;

--@block | 3-> Insere campo do tipo BOOL no veiculo que define se o veiculo e eletrico (caso a empresa decida comecar a comprar carros eletricos)
ALTER TABLE veiculo
ADD eletrico BOOLEAN;

--@block | 4-> Insere campo de idade no cliente
ALTER TABLE cliente
ADD idade INT;
