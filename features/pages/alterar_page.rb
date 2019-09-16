class AlterarPage < SitePrism::Page
    set_url CONFIG['url_login']

    element :dado_login, 'div[class*=box-information]'
    element :lk_acesConta, 'li[class="nav item"]>a[href*="account/edit"]'
    element :sobrenome, 'div>input[id=lastname]'
    element :btn_saveCad, 'button[title="Salvar"]'    


    def validar_areaLogin
        @dado_login = dado_login
    end


    def aces_mConta
        lk_acesConta.click
    end

    def alt_sNome        
        $sobrenome_alt = Faker::Name.last_name
        sobrenome.set $sobrenome_alt                
    end

    def conf_cad
        btn_saveCad.click        
    end

    def val_alt        
        expect($sobrenome_alt).to eql sobrenome
    end

end