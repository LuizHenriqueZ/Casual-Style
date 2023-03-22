-- Banco de dados de BACKUP

CREATE DATABASE BKP_CasualStyle;

CREATE TABLE BKP_Cliente(
	IdBkpCliente INT PRIMARY KEY AUTO_INCREMENT,
	IdCliente_Original INT,
	IdCliente_Alterado INT,
	Nome_Original VARCHAR(30),
	Nome_Alterado VARCHAR(30),
	CPF_Original VARCHAR(11),
	CPF_Alterado VARCHAR(11),
	Email_Original VARCHAR(30),
	Email_Alterado VARCHAR(30),
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
	Evento CHAR(1)
);

CREATE TABLE BKP_Endereco(
    IdBkpEndereco INT PRIMARY KEY AUTO_INCREMENT,
    IdEndereco_Original INT,
	IdEndereco_Alterado INT,
    Estado_Original CHAR(2),
    Estado_Alterado CHAR(2),
    Cidade_Original VARCHAR(30),
    Cidade_Alterada VARCHAR(30),
    Bairro_Original VARCHAR(30),
    Bairro_Alterado VARCHAR(30),
    Rua_Original VARCHAR(50),
    Rua_Alterada VARCHAR(50),
    Numero_Original VARCHAR(10),
    Numero_Alterado VARCHAR(10),
    Complemento_Original VARCHAR(30),
    Complemento_Alterado VARCHAR(30),
    CEP_Original CHAR(8),
    CEP_Alterado CHAR(8),
    Id_Cliente INT,
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
    Evento CHAR(1)

);

CREATE TABLE BKP_Telefone(
	IdBkpTelefone INT PRIMARY KEY AUTO_INCREMENT,
	IdTelefone_Original INT,
	IdTelefone_Alterado INT,
	DDD_Original CHAR(2), 
	DDD_Alterado CHAR(2),
	Numero_Original VARCHAR(10), 
	Numero_Alterado VARCHAR(10),
	Tipo_Original ENUM('RES', 'COM', 'CEL'),
	Tipo_Alterado ENUM('RES', 'COM', 'CEL'),
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
	Evento CHAR(1)
	);

CREATE TABLE BKP_Produto(
	IdBkpProduto INT PRIMARY KEY AUTO_INCREMENT,
	IdProduto_Original INT,
	IdProduto_Alterado INT,
	Nome_Original VARCHAR(30), 
	Nome_Alterado VARCHAR(30), 
	Descricao_Original VARCHAR(100), 
	Descricao_Alterado VARCHAR(100),
	Preco_Original FLOAT(10,2),
	Preco_Alterado FLOAT(10,2),
	Tamanho_Original VARCHAR(2),
	Tamanho_Alterado VARCHAR(2),
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
	Evento CHAR(1)
	);
			
CREATE TABLE BKP_Pedido(
	IdBkpPedido INT PRIMARY KEY AUTO_INCREMENT, 
	IdPedido_Original INT,
	IdPedido_Alterado INT,
	data_Original DATE, 
	data_Alterado DATE,
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
	Evento CHAR(1)
	);

CREATE TABLE BKP_PedidoProduto(
	IdBkpPedidoProduto INT PRIMARY KEY AUTO_INCREMENT,
	IdPedidoProduto_Original INT,
	IdPedidoProduto_Alterado INT,
	Quantidade_Original INT,
	Quantidade_Alterado INT,
	Data_Alteracao DATETIME,
	Usuario VARCHAR(30),
	Evento CHAR(1)
	);
