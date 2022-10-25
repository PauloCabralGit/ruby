Quando('eu cadastro o usuario') do
   
 visit('/users/new')
 fill_in(id: 'user_name', with: 'Paulo')
 find('#user_lastname').set('Cabral')
 fill_in(id: 'user_email', with:'paulocabral_90@hotmail.com')
 find('input[value="Criar"]').click
 sleep(6)

end
  
Então('verifico se o usuario foi cadastrado') do

    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'  
    sleep(6)
   
end
  
Quando('edito um usuario') do
 
 sleep(6)   
 find('.btn.waves-light.blue').click
 sleep(6)
 
end
  
Então('verifico se o usuario foi editado') do
    
   

end