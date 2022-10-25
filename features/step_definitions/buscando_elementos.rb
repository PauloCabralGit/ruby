Quando('acesso a url de botões') do

    visit ('/buscaelementos/botoes')
    sleep(5)

end
  
Então('verifico se encontrei os elementos') do

 #all busca todos os elementos que contenham all
 page.all(:css,'.btn')
 #busca um elemento mampeado
 find('#teste')
 #busca pelo id
 find_by_id('teste')
 #busca por botão
 find_button(class:'btn waves-light')
 #busca o primeiro elemento que contenha o elemento mapeado
 first('.btn')
 #busca elemento por link
 find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')

end