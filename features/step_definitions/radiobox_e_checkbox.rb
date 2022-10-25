Quando('eu marco um check box e um radiobox') do

    visit('/buscaelementos/radioecheckbox')
    find('label[for="white"]').click
    check('purple', allow_label_click: true)
    sleep(5)
    uncheck('purple', allow_label_click: true)
    sleep(5)
    choose('red', allow_label_click: true)
    sleep(5)
    

end