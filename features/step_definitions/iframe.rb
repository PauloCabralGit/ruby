Quando('preencho os campos') do

 
  iframe.load

  @iframe.preencher_campo do |iframe|
   iframe.nome.set 'Paulo'
   iframe.ultimo_nome.set 'Cabral'
  end

  sleep(5)
end