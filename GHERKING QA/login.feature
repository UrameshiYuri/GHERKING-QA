#language: pt

Funcionalidade: login na plataforma
Como cliente da EBAC-SHOP 
Quero fazer o login (autenticação) na plataforma   
Para visualizar meus pedidos 

Cenario: autenticação válida
Dado Que eu acesse a página de checkout da EBAC 
Quando eu digitar o usuario "yuri@ebacshop.com.br"
E senha "senha123"
Entao Deve exibir a mensagem "Acesso permitido." ceder acesso ao usuario e direcionalo a pagina de checkout

Cenario: autenticação invalida 1
Dado Que eu acesse a página de checkout da EBAC 
Quando eu digitar o usuario "yuri@ebacshop.com.br"
E senha "senha123"
Entao Deve exibir a mensagem "Acesso permitido." ceder acesso ao usuario e direcionalo a pagina de checkout

Cenario: autenticação invalida 2
Dado Que eu acesse a página de checkout da EBAC 
Quando eu digitar o usuario "yuri@ebacshop.com.br"
E senha "senhaerrada"
Entao Deve exibir a mensagem "Acesso negado. Email e/ou senha incorretos"