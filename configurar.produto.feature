Feature: configurar produto
Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade 
Para depois inserir no carrinho 

Scenario Outline: Seleções de cor, tamanho e quantidade devem ser obrigatórios
When Eu escolher o <produto> e o <tamanho>
And Escolher a <cor> e <quantidade> do produto
Then deve exibir a <mensagem>

Examples:
|produto|tamanho|cor|quantidade|mensagem|
|"CALÇA JEANS"|"PP"|"ROSA"|"5"|"Produtos adicionados ao carrinho"|
|"CAMISETA"|"G"|"PRETO"|"3"|"Produtos adicionados ao carrinho"|
|"CAMISETA JEANS"|"P"|"CINZA"|"2"|"Produtos adicionados ao carrinho"|
|"SHORT"|"M"|"AZUL"|"1"|"Produto adicionado ao carrinho"|

Scenario: Quantidade maxima
When Eu adionar a quantidae de produtos
And a quantidade for  =>1 ou =< 10 
Then deve exibir a mensagem "Quantidade de produtos aceita."

Scenario: Quantidade maxima ultrapassada
When Eu adionar a quantidade de produtos
And a quantidade for > 10 
Then deve exibir a mensagem "Quantidade de produtos acima do suportado pelo site."

Scenario: Limpar carrinho 
When Eu clicar no botão de limpar carrinho
And quantidade de itens for >=1
Then deve exibir a mensagem "Carrinho esvaziado com sucesso."

Scenario: Limpar carrinho (erro)
When Eu clicar no botão de limpar carrinho
And quantidade de itens for = 0
Then deve exibir a mensagem "Erro ao tentar esvaziar carrinho."