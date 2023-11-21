CREATE TABLE `veiculo`(
    `chassi` BIGINT UNSIGNED NOT NULL,
    `placa` VARCHAR(255) NOT NULL,
    `marca` VARCHAR(255) NOT NULL,
    `modelo` VARCHAR(255) NOT NULL,
    `ano` YEAR NOT NULL,
    `km` BIGINT UNSIGNED NULL
);
ALTER TABLE
    `veiculo` ADD PRIMARY KEY(`chassi`);
CREATE TABLE `manutencao`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `aluguel_id` BIGINT NOT NULL,
    `motivo` TEXT NOT NULL,
    `valor` DOUBLE NOT NULL
);
CREATE TABLE `aluguel`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `veiculo_chassi` BIGINT NOT NULL,
    `cliente_id` BIGINT NOT NULL,
    `data_retirada` DATE NOT NULL,
    `hora_retirada` TIME NOT NULL,
    `km_retirada` BIGINT UNSIGNED NOT NULL,
    `lts_retirada` INT UNSIGNED NOT NULL,
    `data_devolucao` DATE NOT NULL,
    `hora_devolucao` TIME NOT NULL,
    `km_devolucao` BIGINT UNSIGNED NOT NULL,
    `lts_devolucao` INT UNSIGNED NOT NULL,
    `data_prevista` DATE NOT NULL,
    `hora_prevista` TIME NOT NULL,
    `valor_previsto` DOUBLE NOT NULL,
    `valor_real` DOUBLE NOT NULL
);
CREATE TABLE `cliente`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `nome` VARCHAR(255) NOT NULL,
    `cpf` BIGINT UNSIGNED NOT NULL,
    `telefone` BIGINT NOT NULL,
    `cnh` BIGINT NOT NULL
);
ALTER TABLE
    `manutencao` ADD CONSTRAINT `manutencao_aluguel_id_foreign` FOREIGN KEY(`aluguel_id`) REFERENCES `aluguel`(`id`);
ALTER TABLE
    `aluguel` ADD CONSTRAINT `aluguel_cliente_id_foreign` FOREIGN KEY(`cliente_id`) REFERENCES `cliente`(`id`);
ALTER TABLE
    `aluguel` ADD CONSTRAINT `aluguel_veiculo_chassi_foreign` FOREIGN KEY(`veiculo_chassi`) REFERENCES `veiculo`(`chassi`);