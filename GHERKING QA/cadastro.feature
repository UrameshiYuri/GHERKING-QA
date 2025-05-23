#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra

Esquema do Cenario: Preencher todos dados importantes da tabela
Quando eu preencher <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone>
E <Endereco de email>
Entao deve exibir a <Mensagem>

Exemplos: 
|Nome|Sobrenome|Pais|Endereco|Cidade|CEP|Telefone|Endereco de email|Mensagem|
|" Yuri" |" Alves" |" França"|" Paris "|" Paris"|" 75002"|"234443344 "|"yuri@ebacshop.com.br "|" Lista preenchida com sucesso"|
|" Bianca" |" Da Silva" |" Brasil "|"Sao Pauolo "|"Sao Paulo "|"454555 "|"67583940594"|"Bianca@ebachsop.com.br "|" Lista preenchida com sucesso"|

Cenario: campo e Email invalido
Dado que o usuario tenha tentado fazer login com um formato de email invalido
Quando Eu colocar um email invalido "email@invalido123.com.br" senha "senhafalsa123"
E  clicar no botao de "prosseguir" sem preencher algum campo obrigatorio
Entao Deve exibir a mensagem "Erro ao preencher lista. campos obrigatorios devem ser preenchidos corretamente."

Cenario: campos nao preenchidos
Dado que o usuario deixe os campos obrigatorios em branco e tente prosseguir com o cadastro
Quando eu tente prosseguir com o cadastro sem ter preenchido nenhum dado importante
E tente cadastrar minha conta
Entao Deve exibir a mensagem "Erro ao preencher lista. campos obrigatorios devem ser preenchidos corretamente."