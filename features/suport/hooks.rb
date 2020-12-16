#Com o Before podemos criar scripts que serão executados antes de cada teste
Before do 
    page.current_window.maximize
end

#Com o After podemos criar scripts que serão executados depois de cada teste
After do |scenario|
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9 ]/, '') #Elimina os caracteres especiais do nome do cenario
    nome_cenario = nome_cenario.gsub(' ', '_').downcase! #Elimina os espacos em branco do nome do cenario
    screenshot = "/report/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Evidencia do teste') #Aqui anexamos o print/evidencia do teste ao cucumber report
end