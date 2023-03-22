-- Trigger de Update de cliente para backup
CREATE TRIGGER Cliente_Update
BEFORE UPDATE ON Cliente
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Cliente(IdCliente_Original, IdCliente_Alterado, Nome_Original, Nome_Alterado, CPF_Original, CPF_Alterado, Email_Original, Email_Alterado, Data_Alteracao, Usuario, Evento)
	values (old.IdCliente, new.IdCliente, old.Nome, new.Nome, old.CPF, new.CPF, old.Email, new.Email, NOW(), CURRENT_USER(), "U");

END
$

-- Trigger de Deleção de cliente para backup
CREATE TRIGGER Cliente_Delete
BEFORE DELETE ON Cliente
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Cliente(IdCliente_Original, IdCliente_Alterado, Nome_Original, Nome_Alterado, CPF_Original, CPF_Alterado, Email_Original, Email_Alterado, Data_Alteracao, Usuario, Evento)
	values (old.IdCliente, NULL, old.Nome, NULL, old.CPF, NULL, old.Email, NULL, NOW(), CURRENT_USER(), "D");

END
$

-- Trigger de Update de endereço para backup
CREATE TRIGGER Endereco_Update
BEFORE UPDATE ON Endereco
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Endereco(IdEndereco_Original, IdEndereco_Alterado, Estado_Original, Estado_Alterado, Cidade_Original, Cidade_Alterada, Bairro_Original, Bairro_Alterado, Rua_Original, Rua_Alterada, Numero_Original, Numero_Alterado, Complemento_Original, Complemento_Alterado, CEP_Original, CEP_Alterado, Id_Cliente, Data_Alteracao, Usuario, Evento)
	Values (old.IdEndereco, new.IdEndereco, old.Estado, new.Estado, old.Cidade, new.Cidade, old.Bairro, new.Bairro, old.Rua, new.Rua, old.Numero, new.Numero, old.Complemento, new.Complemento, old.CEP, new.CEP, old.Id_Cliente, NOW(), CURRENT_USER(), "U");
	
END
$

-- Trigger de Delete de endereço para backup
CREATE TRIGGER Endereco_Delete
BEFORE DELETE ON Endereco
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Endereco(IdEndereco_Original, IdEndereco_Alterado, Estado_Original, Estado_Alterado, Cidade_Original, Cidade_Alterada, Bairro_Original, Bairro_Alterado, Rua_Original, Rua_Alterada, Numero_Original, Numero_Alterado, Complemento_Original, Complemento_Alterado, CEP_Original, CEP_Alterado, Id_Cliente, Data_Alteracao, Usuario, Evento)
	Values (old.IdEndereco, null, old.Estado, null, old.Cidade, null, old.Bairro, null, old.Rua, null, old.Numero, null, old.Complemento, null, old.CEP, null, old.Id_Cliente, NOW(), CURRENT_USER(), "D");
	
END
$

-- Trigger de Update de Telefone para backup
CREATE TRIGGER Telefone_Update
BEFORE UPDATE ON Telefone
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Telefone(IdTelefone_Original, IdTelefone_Alterado, DDD_Original, DDD_Alterado, Numero_Original, Numero_Alterado, Tipo_Original, Tipo_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdTelefone, new.IdTelefone, old.DDD, new.DDD, old.Numero, new.Numero, old.Tipo, new.Tipo, NOW(), CURRENT_USER(), "U");
	
END
$

-- Trigger de Delete de Telefone para backup
CREATE TRIGGER Telefone_Delete
BEFORE DELETE ON Telefone
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Telefone(IdTelefone_Original, IdTelefone_Alterado, DDD_Original, DDD_Alterado, Numero_Original, Numero_Alterado, Tipo_Original, Tipo_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdTelefone, null, old.DDD, null, old.Numero, null, old.Tipo, null, NOW(), CURRENT_USER(), "D");
	
END
$

-- Trigger de Update de Pedido para backup
CREATE TRIGGER Pedido_Update
BEFORE UPDATE ON Pedido
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Pedido(IdPedido_Original, IdPedido_Alterado, data_Original, data_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdPedido, new.IdPedido, old.data, new.data, NOW(), CURRENT_USER(), "U");
	
END
$

-- Trigger de Delete de Pedido para backup
CREATE TRIGGER Pedido_Delete
BEFORE DELETE ON Pedido
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Pedido(IdPedido_Original, IdPedido_Alterado, data_Original, data_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdPedido, null, old.data, null, NOW(), CURRENT_USER(), "D");
	
END
$

-- Trigger de Update de Produto para backup
CREATE TRIGGER Produto_Update
BEFORE UPDATE ON Produto
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Produto(IdProduto_Original, IdProduto_Alterado, Nome_Original, Nome_Alterado, Descricao_Original, Descricao_Alterado, Preco_Original, Preco_Alterado, Tamanho_Original, Tamanho_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdProduto, new.IdProduto, old.Nome, new.Nome, old.Descricao, new.Descricao, old.Preco, new.Preco, old.Tamanho, new.Tamanho, NOW(), CURRENT_USER(), "U");
	
END
$

-- Trigger de Delete de Produto para backup
CREATE TRIGGER Produto_Delete
BEFORE DELETE ON produto
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_Produto(IdProduto_Original, IdProduto_Alterado, Nome_Original, Nome_Alterado, Descricao_Original, Descricao_Alterado, Preco_Original, Preco_Alterado, Tamanho_Original, Tamanho_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdProduto, NULL, old.Nome, NULL, old.Descricao, NULL, old.Preco, NULL, old.Tamanho, NULL, NOW(), CURRENT_USER(), "D");
	
END
$

-- Trigger de Update de PedidoProduto para backup
CREATE TRIGGER PedidoProduto_Update
BEFORE UPDATE ON PedidoProduto
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_PedidoProduto(IdPedidoProduto_Original, IdPedidoProduto_Alterado, Quantidade_Original, Quantidade_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdPedidoProduto, new.IdPedidoProduto, old.Quantidade, new.Quantidade, NOW(), CURRENT_USER(), "U");
	
END
$

-- Trigger de Delete de PedidoProduto para backup
CREATE TRIGGER PedidoProduto_Delete
BEFORE DELETE ON PedidoProduto
FOR EACH ROW
BEGIN

	INSERT INTO BKP_CasualStyle.BKP_PedidoProduto(IdPedidoProduto_Original, IdPedidoProduto_Alterado, Quantidade_Original, Quantidade_Alterado, Data_Alteracao, Usuario, Evento)
	Values (old.IdPedidoProduto, NULL, old.Quantidade, NULL, NOW(), CURRENT_USER(), "D");
	
END
$

DELIMITER ;