Quando('acesso a url') do
   @home = PaginaInicial.new
   @home.load   
   

end
  
Então('eu verifico se estou na pagina correta') do
   
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)  
    sleep(5)
end