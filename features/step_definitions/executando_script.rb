Quando('uso um script') do
   
  visit('/outros/scroll')
  page.execute_script("window.scrollBy(0,1500)")
  sleep(5)
   @result = page.evaluate_script('4+4');
   puts @result
  end