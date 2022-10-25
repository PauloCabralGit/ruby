module Helper

    def tirar_foto(nome_arquivo, resultado)
       
        caminho_arquivo = "results/screenshot/test_#{resultado}"
        foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
        page.save_screenshot(foto)
        embed(foto, 'image/png', 'Click imagem')
    end
end