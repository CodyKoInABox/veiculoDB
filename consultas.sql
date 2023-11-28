-- Baseado nas consultas: https://www.invertexto.com/?n=fXc8giI



--@block | 1-> Verificar quais carros precisam de manutencao e seus detalhes
SELECT chassi, placa, marca, modelo, cor FROM veiculo v
INNER JOIN precisa_manutencao pm
ON v.chassi = pm.veiculo_chassi;

--@block | 2-> Verificar quantos carros antigos (antes de 2010) estao alugados
SELECT chassi, placa, marca, modelo, ano FROM veiculo v
WHERE v.alugado = true
AND v.ano < 2010;

--@block | 3-> Verificar quantos carros novos (depois de 2010) estao alugados
SELECT chassi, placa, marca, modelo, ano FROM veiculo v
WHERE v.alugado = true
AND v.ano > 2010;
