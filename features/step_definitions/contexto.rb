Dado('que eu tenha {int} laranjas na bolsa') do |valor|
 
    @laranjas = valor
    
end
    
Quando('eu coloco {int} laranjas na bolsa') do |valor2|
   
 @coloquei = valor2
 @resultado = @laranjas + @coloquei

end
    
Então('eu verifico se o total de laranjas na bolsa e {int}') do |total|
  
 expect(@resultado).to eq total  
    
end
    
Quando('eu tiro {int} laranjas da bolsa') do |valor3|
    
    @retiro = valor3
    @resultado = @laranjas - @retiro

end
    
Então('eu verifico quantas laranjas eu fiquei na bolsa') do
  
    expect(@resultado).to eq 8 


end