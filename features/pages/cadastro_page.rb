class CadastroPage < SitePrism::Page
    set_url CONFIG['url_login']
    
    element :btn_cad, 'a[class*=create]'
    element :cp_nome, 'div[class=control]>input[id=firstname]'
    element :cp_sobrenome, 'div[class=control]>input[id=lastname]'
    element :cp_cpf, 'div[class=control]>input[id=taxvat]'
    element :cp_email, 'div[class=control]>input[id=email_address]'
    element :cp_senha, 'div[class=control]>input[id=password]'
    element :cp_confSenha, 'div[class=control]>input[id=password-confirmation]'
    element :btn_confCad, 'div[class=primary]>button[class*=action]'
    element :msg_sucess, 'div[class*=message-success]'



    def acess_cadastro
        btn_cad.click                
    end

    def insert_dados        
        @temp_nome = Faker::Name.first_name
        @temp_sobrenome = Faker::Name.last_name
        @temp_email = Faker::Internet.email
        cp_sobrenome.set @temp_sobrenome
        cp_nome.set @temp_nome        
        cp_email.set @temp_email
        cp_senha.set 'senha@123'
        cp_confSenha.set 'senha@123'
        cp_cpf.set $nmcpf
        
    end

    def finalizar_cadastro
        btn_confCad.click
        $msg_sucess = msg_sucess.text        
    end



end