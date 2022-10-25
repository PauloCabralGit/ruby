Quando('eu multiplico minhas {int} pelo {int}') do |laranja, valor|
@multipicacao = laranja * valor

end
    
Então('eu vejo qual {int} da multipicação') do |resultado|
   
expect(@multipicacao).to eq resultado

end