#language pt
Funcionalidade: configurar produto
Como cliente da EBAC-SHOP 
Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade 
Para depois inserir no carrinho 

Esquema do Cenario: Seleções de cor, tamanho e quantidade devem ser obrigatórios
Quando Eu escolher o <produto> e o <tamanho>
E Escolher a <cor> e <quantidade> do produto
Entao deve exibir a <mensagem>

Exemplos:
|produto|tamanho|cor|quantidade|mensagem|
|"CALÇA JEANS"|"PP"|"ROSA"|"5"|"Produtos adicionados ao carrinho"|
|"CAMISETA"|"G"|"PRETO"|"3"|"Produtos adicionados ao carrinho"|
|"CAMISETA JEANS"|"P"|"CINZA"|"2"|"Produtos adicionados ao carrinho"|
|"SHORT"|"M"|"AZUL"|"1"|"Produto adicionado ao carrinho"|

Cenario: Quantidade maxima
Quando Eu adionar a quantidae de produtos
E a quantidade for  =>1 ou =< 10 
Entao deve exibir a mensagem "Quantidade de produtos aceita."

Cenario: Quantidade maxima ultrapassada
Quando Eu adionar a quantidade de produtos
E a quantidade for > 10 
Entao deve exibir a mensagem "Quantidade de produtos acima do suportado pelo site."

Cenario: Limpar carrinho 
Quando Eu clicar no botão de limpar carrinho
E quantidade de itens for >=1
Entao deve exibir a mensagem "Carrinho esvaziado com sucesso."

Cenario: Limpar carrinho (erro)
Quando Eu clicar no botão de limpar carrinho
E quantidade de itens for = 0
Entao deve exibir a mensagem "Erro ao tentar esvaziar carrinho."