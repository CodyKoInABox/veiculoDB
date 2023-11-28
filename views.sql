-- Baseado nas views: https://www.invertexto.com/?n=fXc8giI

--@block | 1-> Verificar quantos alugueis ativos a empresa tem e os detalhes do carro alugado
CREATE VIEW alugueisAtivos AS
SELECT placa, marca, modelo, multiplicador FROM veiculo v
WHERE v.alugado = true;

--@block | 2-> Verificar quais veiculos estao disponiveis para aluguel e quais seus valores de diaria
CREATE VIEW veiculosDisponiveis AS
SELECT placa, marca, modelo, cor, multiplicador*100 AS diaria FROM veiculo v
WHERE v.alugado = false;

--@block | 3-> Verificar quantos carros a empresa possui no momento
CREATE VIEW quantidadeDeCarros AS
SELECT COUNT(*) as quantidade FROM veiculo;

--@block | 4-> Verificar quais carros precisam de manutencao
CREATE VIEW carrosQuePrecisamDeManutencao AS
SELECT placa, marca, modelo, cor, ano, km FROM veiculo v
INNER JOIN precisa_manutencao pm
ON v.chassi = pm.veiculo_chassi;
