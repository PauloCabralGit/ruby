class MapeandoTabela < SitePrism::Page

    set_url '/buscaelementos/table'

    elements :lista, 'tr > td'
    
end