Quando('realizo uma acao com uma tecla') do
   visit('users/new')
   find('#user_name').send_keys(:tab)
   sleep(5)
  end