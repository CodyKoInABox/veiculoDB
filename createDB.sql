
--@block CRIAR TABELA CLIENTE
CREATE TABLE cliente(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf INT UNSIGNED NOT NULL,
    cnh INT UNSIGNED NOT NULL,
    telefone INT NOT NULL,
    PRIMARY KEY (id)
);

--@block CRIAR TABELA VEICULO
CREATE TABLE veiculo(
    chassi INT UNSIGNED NOT NULL,
    placa VARCHAR(7) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano YEAR NOT NULL,
    km BIGINT UNSIGNED,
    PRIMARY KEY (chassi)
);

--@block CRIAR TABELA ALUGUEL
CREATE TABLE aluguel(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    veiculo_chassi INT UNSIGNED NOT NULL,
    cliente_id INT UNSIGNED NOT NULL,
    data_retirada DATE NOT NULL,
    hora_retirada TIME NOT NULL,
    km_retirada INT UNSIGNED NOT NULL,
    lt_retirada INT UNSIGNED NOT NULL,
    data_devolucao DATE NOT NULL,
    hora_devolucao TIME NOT NULL,
    km_devolucao INT UNSIGNED NOT NULL,
    lt_devolucao INT UNSIGNED NOT NULL,
    data_prevista DATE NOT NULL,
    hora_prevista TIME NOT NULL,
    valor_previsto DOUBLE NOT NULL,
    valor_real DOUBLE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (veiculo_chassi) REFERENCES veiculo(chassi),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

--@block CRIAR TABELA MANUTENCAO
CREATE TABLE manutencao(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    aluguel_id INT NOT NULL,
    motivo TEXT NOT NULL,
    valor DOUBLE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (aluguel_id) REFERENCES aluguel(id)
);
