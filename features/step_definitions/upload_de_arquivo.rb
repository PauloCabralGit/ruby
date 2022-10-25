Quando('eu faco um upload de um arquivo') do
    
  visit('/outros/uploaddearquivos')
  #opção1
  #attach_file('upload', 'features\Doc1.docx', make_visible:true)
  #sleep(5)
  
  #opção2
  @foto = File.join(Dir.pwd, 'features\Doc1.docx')
  attach_file('upload', @foto, make_visible:true)
  sleep(5)
end