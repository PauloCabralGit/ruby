Quando('mapeio uma tabela') do
  
   mapeando_tabela.load
   puts @mapeando_tabela.lista.size

   puts @mapeando_tabela.lista[0].text
   
   expect(@mapeando_tabela.lista.size).to eql 24
   
   @mapeando_tabela.lista.each do |listas|
     puts listas.text
   end
   

end
  