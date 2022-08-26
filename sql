CREATE TABLE `projeto integrador`.`cadastro de usuários (adm)` ( `id_usuario` SMALLINT(20) NOT NULL , `Nome` CHAR(50) NOT NULL , `cpf` INT(50) NOT NULL , `usuario` CHAR(50) NOT NULL ) ENGINE = InnoDB; 

 

CREATE TABLE `projeto integrador`.`cadastro de veiculos` ( `id_veiculo` SMALLINT(20) NOT NULL , `Veiculo` CHAR(20) NOT NULL , `Marca` CHAR(20) NOT NULL , `Fabricacao_Modelo` CHAR(10) NOT NULL , `Cor` CHAR(10) NOT NULL , `Placa` CHAR(20) NOT NULL , `Chassi` BIGINT(30) NOT NULL , `Combustivel` CHAR(30) NOT NULL , `Diferencial_Transmissao` CHAR(15) NOT NULL , `Km_Rodados` INT(10) NOT NULL , `Data_de_Compra` DATE NOT NULL , `Data_de_Vendas` DATE NOT NULL , `Tabela_FIP` DECIMAL(10) NOT NULL ) ENGINE = InnoDB; 

 

CREATE TABLE `projeto integrador`.`imagens` ( `Id_imagens` SMALLINT(20) NOT NULL , `Placa` BLOB NOT NULL , `frente` BLOB NOT NULL , `Lateral_esquerdo` BLOB NOT NULL , `Lateral_direito` BLOB NOT NULL , `Traseira` BLOB NOT NULL , `Painel_completo` BLOB NOT NULL , `Bancos` BLOB NOT NULL , `Motor` BLOB NOT NULL ) ENGINE = InnoDB; 

 

CREATE TABLE `projeto integrador`.`cadastro de clientes` ( `Id_cilente` SMALLINT(20) NOT NULL , `Nome` CHAR(50) NOT NULL , `Data_nascimento` DATE NOT NULL , `Cpf` CHAR(15) NOT NULL , `Endereço` CHAR(50) NOT NULL , `Cidade` CHAR(20) NOT NULL , `Bairro` CHAR(20) NOT NULL , `Estado` CHAR(15) NOT NULL , `Cep` CHAR(10) NOT NULL , `Telefone` MEDIUMINT(10) NOT NULL , `Email` CHAR(50) NOT NULL ) ENGINE = InnoDB; 

Fechar 

CREATE TABLE `projeto integrador`.`informaçoes` ( `Id_informacao` SMALLINT(20) NOT NULL , `quantidade_de_veiculos` INT(15) NOT NULL , `quantidade_de_vendas` INT(15) NOT NULL ) ENGINE = InnoDB; 
 
ALTER TABLE `cadastro de clientes` DROP `Cidade`;
ALTER TABLE `cadastro de clientes` DROP `Bairro`;
ALTER TABLE `cadastro de clientes` DROP `Estado`;
ALTER TABLE `cadastro de clientes` DROP `Cep`;

Pré-visualizar SQL
CREATE TABLE `projeto integrador`.`endereco` ( `id_endereco` SMALLINT(40) NULL DEFAULT NULL , `Rua` CHAR(30) NOT NULL , `Numero` INT(10) NOT NULL , `Bairro` CHAR(20) NOT NULL , `Cep` INT(8) NOT NULL , `Cidade` CHAR(15) NOT NULL , `Estado` CHAR(15) NOT NULL , PRIMARY KEY (`id_endereco`)) ENGINE = InnoDB;

CREATE TABLE `projeto integrador`.`telefone` ( `Id_telefone` SMALLINT NOT NULL AUTO_INCREMENT , `Id_clientes` INT NOT NULL , `numero` MEDIUMINT NOT NULL , PRIMARY KEY (`Id_telefone`)) ENGINE = InnoDB;

 ALTER TABLE `clientes` ADD `nome` CHAR(50) NOT NULL AFTER `Id_clientes`;
ALTER TABLE `clientes` ADD `data_nascimento` DATE NOT NULL AFTER `Id_clientes`;
ALTER TABLE `clientes` ADD `cpf` CHAR(11) NOT NULL AFTER `data_nascimento`;
ALTER TABLE `clientes` ADD `email` CHAR(50) NOT NULL AFTER `cpf`;
CREATE TABLE `projeto integrador`.`endereço` ( `Id_clientes` SMALLINT NOT NULL AUTO_INCREMENT , `Id_endereço` SMALLINT NOT NULL , `cep` INT(8) NOT NULL , `cidade` CHAR(50) NOT NULL , `estado` CHAR(50) NOT NULL , `bairro` CHAR(50) NOT NULL , PRIMARY KEY (`Id_clientes`)) ENGINE = InnoDB;
ALTER TABLE `carros` CHANGE `Id_carro` `id_carro` INT(11) NOT NULL;
ALTER TABLE `clientes` CHANGE `Id_clientes` `id_clientes` INT(11) NOT NULL;
ALTER TABLE `endereço` CHANGE `Id_clientes` `id_clientes` SMALLINT(6) NOT NULL AUTO_INCREMENT;
ALTER TABLE `endereço` CHANGE `Id_endereço` `id_endereço` SMALLINT(6) NOT NULL;
ALTER TABLE `imagens` CHANGE `Id_imagem` `id_imagem` INT(11) NOT NULL;
ALTER TABLE `telefone` CHANGE `Id_telefone` `id_telefone` SMALLINT(6) NOT NULL AUTO_INCREMENT
ALTER TABLE `telefone` CHANGE `Id_clientes` `id_clientes` INT(11) NOT NULL;
ALTER TABLE `usuários do adm` CHANGE `Id_ADM` `id_ADM` INT(11) NOT NULL;
ALTER TABLE `clientes` CHANGE `cpf` `cpf` INT(11) NOT NULL;

ALTER TABLE `usuários do adm` ADD `nome` CHAR(50) NOT NULL AFTER `id_ADM`, ADD `cpf` INT NOT NULL AFTER `nome`;
ALTER TABLE `carros` ADD `descrição` CHAR(100) NOT NULL AFTER `id_carro`;
