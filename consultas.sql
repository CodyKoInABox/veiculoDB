-- Baseado nas consultas: https://www.invertexto.com/?n=fXc8giI



--@block | 1-> Verificar quais carros precisam de manutencao e seus detalhes
SELECT chassi, placa, marca, modelo, cor FROM veiculo v
INNER JOIN precisa_manutencao pm
ON v.chassi = pm.veiculo_chassi;
