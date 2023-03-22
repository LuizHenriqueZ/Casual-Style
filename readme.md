<h1>Esse é o repositório do meu projeto de Banco de Dados<h1>
A ideia desse projeto era praticar tudo que eu aprendi de SQL, na faculdade e em um curso que fiz.

Nesse projeto eu a partir de uma ideia, montei o modelo lógico e físico, fiz uma database de backup, usei triggers para automatizar os backup e deixei algumas procedures e queries feitas.

Então vamos começar minha jornada nesse projeto.

<h2>Informações do projeto<h2>
Nome do projeto: Casual Style
Objetivo do projeto: Criar um banco de dados que possa ser utilizado para armazenar informações sobre produtos, clientes e pedidos em um comercio de roupas.
Tecnologias: MySQL
<hr>
Lista de requisitos:

O banco de dados deve ser capaz de armazenar informações sobre produtos, 
incluindo nome, descrição, preço e tamanho.

O banco de dados deve ser capaz de armazenar informações sobre clientes, 
incluindo nome, endereço, e-mail e telefone.

O banco de dados deve ser capaz de armazenar informações sobre pedidos, 
incluindo o cliente que fez o pedido e a data do pedido.

O banco de dados deve ser capaz de relacionar produtos a pedidos e clientes 
a pedidos.
<hr>
Regras de negócio:

Cada produto deve ter um preço e um tamanho definidos.

Cada cliente deve ter um nome, endereço, e-mail e telefone únicos.

Cada pedido deve ter uma data de criação.

Um pedido pode conter vários produtos, mas cada produto só pode estar 
associado a um pedido.
<hr>


<h2>Modelagem Lógica<h2>