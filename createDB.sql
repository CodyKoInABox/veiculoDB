
--@block CRIAR TABELA status_veiculo
CREATE TABLE status_veiculo(
    id INT NOT NULL AUTO_INCREMENT,
    data DATE NOT NULL,
    km INT NOT NULL,
    litros INT NOT NULL,
    PRIMARY KEY (id)
);

--@block CRIAR TABELA veiculo
CREATE TABLE veiculo(
    chassi INT NOT NULL,
    placa VARCHAR(7) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cor VARCHAR(20) NOT NULL,
    ano YEAR NOT NULL,
    km INT NOT NULL,
    multiplicador FLOAT NOT NULL,
    alugado BOOLEAN NOT NULL,
    PRIMARY KEY (chassi)
);

--@block CRIAR TABELA cliente
CREATE TABLE cliente(
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(11) NOT NULL,
    cnh VARCHAR(9) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

--@block CRIAR TABELA precisa_manutencao
CREATE TABLE precisa_manutencao(
    id INT NOT NULL AUTO_INCREMENT,
    veiculo_chassi INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (veiculo_chassi) REFERENCES veiculo(chassi)
);

--@block CRIAR TABELA manutencao
CREATE TABLE manutencao(
    id INT NOT NULL AUTO_INCREMENT,
    veiculo_chassi INT NOT NULL,
    motivo TEXT NOT NULL,
    descricao TEXT NOT NULL,
    km INT NOT NULL,
    data DATE NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (veiculo_chassi) REFERENCES veiculo(chassi)
);

--@block CRIAR TABELA aluguel
CREATE TABLE aluguel(
    id INT NOT NULL AUTO_INCREMENT,
    veiculo_chassi INT NOT NULL,
    cliente_id INT NOT NULL,
    retirada_status_id INT NOT NULL,
    devolucao_status_id INT NOT NULL,
    dias INT NOT NULL,
    data_prevista DATE NOT NULL,
    valor_previsto FLOAT NOT NULL,
    valor_real FLOAT,
    dias_atraso INT,
    PRIMARY KEY (id),
    FOREIGN KEY (veiculo_chassi) REFERENCES veiculo(chassi),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    FOREIGN KEY (retirada_status_id) REFERENCES status_veiculo(id),
    FOREIGN KEY (devolucao_status_id) REFERENCES status_veiculo(id)
);

