Quando('eu faco cadastro') do
  
    visit('/users/new')
    fill_in(id: 'user_name', with: 'Paulo')
    find('#user_lastname').set('Cabral')
    fill_in(id:'user_email', with:'paulocabral_90@hotmail.com')
    find('#user_university').set('Uninter')
    find('#user_profile').set('QA')
    find('#user_gender').set('Masculino')
    find('#user_age').set('32')
    find('#user_address').set('rua teste')
    find('input[value="Criar"]').click
    sleep(5)

end
  
Então('verifico se fui cadastrado') do
    
    texto = find('#notice')
    expect(texto.text).to eq 'Usuário Criado com sucesso'

end