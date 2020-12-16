#Nesse arquivo estão as classes de page object. Optei por esse modelo para facilitar futuras manutenções em locators

class HomePage
    include Capybara::DSL

    def clica_Unidades
        click_link 'Unidades'
    end
end

class UnidadesPage
    include Capybara::DSL
    def clica_filtro_selecione
        find('#checkoox-select-facilities').click
    end
    
    def seleciona_facilidade (facilidade)
        find("label[for='#{facilidade}']").click
    end
    
    def clica_ver_detalhes
       find('#button-see-on-map-2-alphaville').click
    end
end