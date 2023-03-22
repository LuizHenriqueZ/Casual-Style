--Algumas ideias
1 - Crie uma consulta que retorne todos os produtos com seus preços e tamanhos.
2 - Crie uma consulta que retorne todos os clientes com seus respectivos endereços e telefones.
3 - Crie uma consulta que retorne todos os pedidos realizados por um determinado cliente.
4 - Crie uma query que retorne o nome, o email e o número total de pedidos feitos por cada cliente.
5 - Crie uma query que retorne o nome, a descrição e o preço de todos os produtos que possuem tamanho "P".
6 - Crie uma procedure que atualize o preço de um produto específico.
7 - Crie uma procedure que receba o ID de um pedido e retorne o nome e o CPF do cliente que fez o pedido, além da data do pedido.

1 - Crie uma consulta que retorne todos os produtos com seus preços e tamanhos.
		SELECT Nome, Preco, Tamanho FROM Produto;

2 - Crie uma consulta que retorne todos os clientes com seus respectivos endereços e telefones.
		SELECT C.Nome, E.Estado, E.Cidade, E.Bairro, E.Rua, E.Numero, T.DDD, T.Numero as 'Numero_Telefone', T.Tipo FROM Cliente C
		INNER JOIN Endereco E
		ON E.Id_Cliente = C.IdCliente
		INNER JOIN Telefone T
		ON T.Id_Cliente = C.IdCliente;
	
3 - Crie uma consulta que retorne todos os pedidos realizados por um determinado cliente.
		SELECT C.Nome, P.IdPedido FROM Cliente C
		INNER JOIN Pedido P
		ON P.Id_Cliente = C.IdCliente
		WHERE C.IdCliente = 1;

4 - Crie uma query que retorne o nome, o email e o número total de pedidos feitos por cada cliente.
		SELECT C.Nome, C.Email, P.IdPedido FROM Cliente C
		INNER JOIN Pedido P
		ON P.Id_Cliente = C.IdCliente;
	
5 - Crie uma query que retorne o nome, a descrição e o preço de todos os produtos que possuem tamanho "P".
		SELECT Nome, Descricao, Preco FROM Produto
		WHERE Tamanho = 'P';
	
6 - Crie uma procedure que atualize o preço de um produto específico.
		DELIMITER $

		CREATE PROCEDURE Att_Preco(P_IdProduto INT, P_Preco FLOAT(10,2))
		BEGIN


			UPDATE Produto SET Preco = P_Preco
			WHERE IdProduto = P_IdProduto;

		END
		$

		DELIMITER ;

7 - Crie uma procedure que receba o ID de um pedido e retorne o nome e o CPF do cliente que fez o pedido, além da data do pedido.
		DELIMITER $

		CREATE PROCEDURE Pedido_Cliente(P_IdPedido INT)
		BEGIN


			SELECT C.Nome, C.CPF, P.Data FROM Cliente C
			INNER JOIN Pedido P
			ON P.Id_Cliente = C.IdCliente
			WHERE IdPedido = p_IdPedido;

		END
		$

		DELIMITER ;


