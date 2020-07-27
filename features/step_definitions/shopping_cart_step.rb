Dado('que eu estou no site do mercado') do
    @browser.goto 'https://www.marche.com.br'
end
  
Quando('eu busco por {string}') do |produto|
    @browser.element(id: 'query').send_keys(produto, :enter)
end
  
Quando('adiciono o produto no carrinho') do
    @browser.elements(text: 'Adicionar').first.click
    sleep 2
end
  
Quando('acesso o carrinho de compras') do
    @browser.goto 'https://www.marche.com.br/cart'
end
  
Então('verifico se o produto {string} foi adicionado com sucesso') do |produto|
    result = @browser.element(text: produto).present?
    expect(result).to eq true
end

Então('devo ver a mensagem {string}') do |message|
    sleep 2
    result = @browser.element(text: message).present?
    expect(result).to eq true
end
  
Quando('altero a quantidade do produto para {string}') do |quantity|
    sleep 2
    add_button = @browser.element("data-role": 'add-btn')

    quantity.to_i.times do
        add_button.click
    end
end
  
Então('devo ver a quantidade alterada para {string}') do |quantity|
    result = @browser.element(text: quantity).present?
end
  
Então('eu excluo o item do carrinho') do
    @browser.element("data-role": 'add-btn').click
end