class EquiposPage
    include Capybara::DSL
    
    def create(equipo)
        page.has_css?("#equipoForm")
        upload(equipo[:thumb]) if equipo[:thumb].length > 0 
        find("input[placeholder$=equipamento]").set equipo[:nome]
        select_cat(text:equipo[:categoria]) if equipo[:categoria].length > 0
        find("input[placeholder^=Valor]").set equipo[:preco]

        click_button "Cadastrar"
    end 
    def upload(file_name)
        thumb = Dir.pwd + "/features/support/fixtures/images/" + file_name 
        find("#thumbnail input[type=file]", visible: false).set thumb        
    end

    def select_cat(cat)
        find("#category").find("option", cat).select_option
    end
end