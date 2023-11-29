

--@block CRIAR CLIENTES
INSERT INTO cliente(nome, cpf, telefone, cnh) VALUES
('Leonardo DiCaprio', 12345678901, 11987654321, 583219476),
('Brad Pitt', 23456789012, 21901234567, 974815632),
('Martin Scorsese', 34567890123, 31876543210, 246359187),
('Jennifer Lawrence', 45678901234, 41789012345, 815627394),
('Rachel Senott', 56789012345, 51678901234, 362514789),
('Tom Brady', 67890123456, 61543210987, 497831256),
('Taylor Swift', 78901234567, 71432109876, 138926745),
('Travis Kelce', 89012345678, 81345678901, 729643518),
('Austin Reaves', 90123456789, 91234567890, 654782913),
('Barbara Corcoran', 98765432109, 21987654321, 915374826);

--@block  CRIAR VEICULOS
INSERT INTO veiculo VALUES
('9BRABCDE1234567', 'ABC1234', 'Mercedes', 'C180', 'Preto', 2017, 121845, 5.0, true),
('9BRFGHIJ8901234', 'XYZ5678', 'BMW', 'M4', 'Branco', 2019, 91463, 3.0, false),
('9BRKLMNO5678901', 'QWE9876', 'Volkswagen', 'Taos', 'Cinza', 2023, 10845, 1.0, false),
('9BRPQRST2345678', 'DEF6543', 'Fiat', 'Mobi', 'Branco', 2021, 82644, 1.0, true),
('9BRFGHIJ3456789', 'MNO8901', 'Ferrari', '360 Spider', 'Vermelho', 2003, 291400, 10.0, true),
('9BRPQRST7890123', 'GHI4321', 'Fiat', 'Uno Mille', 'Vermelho', 2000, 492820, 0.5, false);

--@block CRIAR STATUS VEICULOS
INSERT INTO status_veiculo(data, km, litros) VALUES
(DATE('2023-11-28'), 121845, 70),
(DATE('2023-10-1'), 91392, 60),
(DATE('2023-10-6'), 91463, 59),
(DATE('2021-02-10'), 0, 50),
(DATE('2021-02-21'), 362, 42),
(DATE('2023-11-20'), 82644, 40),
(DATE('2023-11-01'), 291400, 60),
(DATE('2023-01-10'), 401735, 30),
(DATE('2023-01-12'), 401900, 27),
(DATE('2023-02-10'), 491794, 30),
(DATE('2023-02-15'), 492820, 29),
(DATE('2023-07-22'), 10711, 50),
(DATE('2023-07-29'), 10845, 48);

--@block CRIAR ALUGUEIS (quando retirada_status e devolucao_status forem iguais e pois o carro ainda nao foi devolvido)
INSERT INTO aluguel(veiculo_chassi, cliente_id, retirada_status_id, devolucao_status_id, dias, data_prevista, valor_previsto, valor_real, dias_atraso) VALUES
('9BRABCDE1234567', 1, 1, 1, 6, DATE('2023-12-04'), 3000, NULL, NULL),
('9BRFGHIJ8901234', 10, 2, 3, 4, DATE('2023-10-5'), 1200, 1800, 1),
('9BRKLMNO5678901', 2, 4, 5, 11, DATE('2021-02-21'), 1100, 1100, 0),
('9BRPQRST2345678', 5, 6, 6, 10, DATE('2023-11-30'), 1000, NULL, NULL),
('9BRFGHIJ3456789', 3, 7, 7, 30, DATE('2023-12-01'), 30000, NULL, NULL),
('9BRPQRST7890123', 9, 8, 9, 1, DATE('2023-01-11'), 50, 150, 1),
('9BRPQRST7890123', 9, 10, 11, 3, DATE('2023-02-13'), 150, 350, 2),
('9BRKLMNO5678901', 7, 12, 13, 7, DATE('2023-07-29'), 700, 700, 0);

--@block CRIAR PRECISA DE MANUTENCAO
INSERT INTO precisa_manutencao(veiculo_chassi) VALUES
('9BRPQRST7890123');

--@block CRIAR MANUTENCAO
INSERT INTO manutencao(veiculo_chassi, motivo, descricao, km, data) VALUES
('9BRPQRST7890123', 'Velho', 'Tudo certo arrumamos olho e algumas coisas mas nada demais', 482018, DATE('2023-05-10')),
('9BRFGHIJ3456789', 'Cliente acelerou demais e motor comecou a fazer barulho estranho', 'Problema leve no injetor de combustivel, arrumamos.', 281928, DATE('2023-10-01'));
