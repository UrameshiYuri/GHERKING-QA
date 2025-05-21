#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP 
Quero fazer concluir meu cadastro    
Para finalizar minha compra

Esquema do Cenario: Preencher todos dados importantes da tabela
Quando <Nome>, <Sobrenome>, <Pais>, <Endereco>
E <Cidade>, <CEP>, <Telefone>, <Endereco de email>
Entao deve exibir a <Mensagem>

Exemplos: 
|Nome|Sobrenome|Pais|Endereco|Cidade|CEP|Telefone|Endereco de email|Mensagem|
|" Yuri" |" Alves" |" França"|" Paris "|" Paris"|" 75002"|"234443344 "|"yuri@ebacshop.com.br "|" Lista preenchida com sucesso"|
|" Bianca" |" Da Silva" |" Brasil "|"Sao Pauolo "|"Sao Paulo "|"454555 "|"67583940594"|"Bianca@ebachsop.com.br "|" Lista preenchida com sucesso"|

Cenario: campo e Email invalido
Dado que eu preencha algum campo com caracteristicas erradas
Quando o email utilizado seja de formato invalido 
E algum campo seja preenchido com alguma caracteristica errada 
Entao Deve exibir a mensagem "Erro ao preencher lista. campos obrigatorios devem ser preenchidos corretamente."

Cenario: campos nao preenchidos
Dado que todos os campos sejam deixados sem preencher
Quando nenhum dado seja fornecido pelo usuario
E todos os campos foram deixados em branco
Entao Deve exibir a mensagem "Erro ao preencher lista. campos obrigatorios devem ser preenchidos corretamente."