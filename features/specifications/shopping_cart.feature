# language: pt

Funcionalidade: Montar carrinho de compras

    @success
    Cenario: Criar um carrinho de compras com sucesso
        Dado que eu estou no site do mercado
        Quando eu busco por 'Batata Doce Rosada kg'
        E adiciono o produto no carrinho
        E acesso o carrinho de compras
        Então verifico se o produto 'Batata Doce Rosada kg' foi adicionado com sucesso

    @error
    Cenario: Produto não encontrado
        Dado que eu estou no site do mercado
        Quando eu busco por 'blablabla'
        Então devo ver a mensagem 'Não foi possível encontrar nenhum produto com esse nome.'

    @success
    Cenario: Alterar a quantidade do produto com sucesso
        Dado que eu estou no site do mercado
        Quando eu busco por 'alface'
        E adiciono o produto no carrinho
        E acesso o carrinho de compras
        E altero a quantidade do produto para '5'
        Então devo ver a quantidade alterada para ' 5 '

    @success
    Cenario: Excluir item do carrinho
        Dado que eu estou no site do mercado
        Quando eu busco por 'tomate'
        E adiciono o produto no carrinho
        E acesso o carrinho de compras
        Então eu excluo o item do carrinho
        