Dir[File.join(File.dirname(__FILE__),'../pages/*_page.rb')].each {|file| require file}


module PageObjects
    
    def mapeando_elemento
     
         @mapeando_elemento ||= MapeandoElementoPage.new
         
    
    end   
    def ajax
     
        @ajax ||= AjaxPage.new
         
    end  
    def iframe
     
     @iframe ||= PaginaPadrao.new
    

    end 
    def mapeando_tabela
     
        @mapeando_tabela ||= MapeandoTabela.new
        
   
    end   
    def pagina_inicial
     
        @pagina_inicial ||= PaginaInicial.new
        
   
    end  
    def sessao
     
        @sessao ||= Pagina.new
        
   
    end  
end