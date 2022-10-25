Quando('interajo com dropdown e select') do
     visit('/buscaelementos/dropdowneselect')
     find('.btn.dropdown-button').click
     find('#dropdown3').click
     #seleciona a opcão
     select 'Chrome', from: 'dropdown'
     #seleciona a opcão
     find('option[value="2"]').select_option

     sleep(5)

end
  
Quando('preencho o autocomplete') do
    visit('/widgets/autocomplete')
    find('#autocomplete-input').set 'Rio de Jane'
    sleep(5)
    find('ul', text: 'Rio de Janeiro').click
    #find('ul[id*="autocomplete-options-"]').click
    sleep(5)
end