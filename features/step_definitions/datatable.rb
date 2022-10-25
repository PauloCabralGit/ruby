Dado('que eu tenho laranjas') do |table|
    table.hashes.each do |valor|
      
      @laranjas = valor['Laranjas'].to_i

    end      
   
end
  
Quando('eu corto') do |table|
    
    table.hashes.each do |valor|
      
      @cortar = valor['Laranjas'].to_i

    end      
   

    @total = @laranjas - @cortar

end
  
Então('eu verifico quantas laranjas sobraram inteiras') do
  
 expect(@total).to eq 8

end
  
Quando('eu chupo laranjas') do |table|
  
    table.hashes.each do |valor|
      
     @chupar = valor['Laranjas'].to_i

    end      
   
    @total = @laranjas - @chupar
end
  
Então('eu verifico quantas laranjas sobrara,') do
   
 expect(@total).to eq 8

end