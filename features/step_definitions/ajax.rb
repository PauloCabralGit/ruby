Quando('clico aperto o botao') do
 
  ajax.load
  @ajax.clicar_botao  
    

end
  
Então('verifico se apareceu') do
  
    #@ajax.wait_for_mensagem
    expect(@ajax.mensagem.text).to eql 'Você Clicou no Botão!'  
   
end