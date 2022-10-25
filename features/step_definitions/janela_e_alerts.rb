Quando('eu entro na janela e verifico a mensagem') do
    visit('/mudancadefoco/janela')
    
    #janela recebe uma janela que foi aberta pelo link
    janela = window_opened_by do
     
      click_link 'Clique aqui'   

    end
    #muda o foco para a janelaS
    within_window janela do
     
     expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'  
     @mensagem = find ('.red-text.text-darken-1.center')
     expect(@mensagem.text).to  eq 'Você Abriu uma nova janela!!'
     janela.close
     sleep(3)
     

    end
     
    #segunda opção
    
     click_link 'Clique aqui'
     switch_to_window windows.last

     expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'  
     @mensagem = find ('.red-text.text-darken-1.center')
     expect(@mensagem.text).to  eq 'Você Abriu uma nova janela!!'
     windows.last.close
     sleep(3)
    

end
  
Quando('eu entro no alert e verifico faco a acao') do
 visit('/mudancadefoco/alert')
 
 find('button[onclick="jsAlert()"]').click
 sleep(3)
 page.accept_alert
 find('button[onclick="jsConfirm()"]').click
 sleep(3)
 page.dismiss_confirm
 find('button[onclick="jsPrompt()"]').click
 sleep(3)
 page.accept_prompt(with: 'Paulo Cabral')
sleep(3)
 

end