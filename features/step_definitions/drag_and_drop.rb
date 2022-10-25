Dado('que estou na tela de dragdro') do
    visit('/iteracoes/draganddrop')
  end
  
  Quando('movo o dragdrop com sucesso') do
   
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find ('#dropzone')
    
    @primeiro_elemento.drag_to(@segundo_elemento)
    sleep(5)


  end