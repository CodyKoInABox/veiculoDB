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

--@block | 4-> Verificar quantas manutencoes foram feitas no mes de maio (qualque ano)
SELECT COUNT(id) FROM manutencao m
WHERE MONTH(m.data) = 05;

--@block | 5-> Verificar a quantidade de cada cor de carro
SELECT cor, COUNT(*) FROM veiculo GROUP BY cor;

--@block | 6-> Verificar todos os clientes e seus detalhes
SELECT nome, cpf, telefone, cnh FROM cliente;

--@block | 7-> Verificar veiculos populares (multiplicador ate 2) disponiveis para aluguel
SELECT chassi, placa, marca, modelo, cor, multiplicador FROM veiculo v
WHERE v.multiplicador <= 2
AND v.alugado = false;

--@block | 8-> Verificar veiculos de luxo (multiplicador acima de 2) disponiveis para aluguel
SELECT chassi, placa, marca, modelo, cor, multiplicador FROM veiculo v
WHERE v.multiplicador >= 2
AND v.alugado = false;

--@block | 9-> Verificar quantos alugueis cada cliente fez
SELECT nome, cpf, COUNT(*) FROM cliente c
INNER JOIN aluguel a
ON c.id = a.cliente_id
GROUP BY c.nome;
