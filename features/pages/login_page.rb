class LoginPage < SitePrism::Page
    set_url CONFIG['url_login']
    
    element :cp_login, '#email'
    element :cp_senha, '#pass'
    element :btn_login, '#send2'
    element :box_login, '.box-information'
    element :msg_loginOf, 'div[class=control]>div[id=email-error]'
    element :msg_passOf, 'div[class=control]>div[id=pass-error]'
    element :msg_loginError, 'div[class="page messages"]>div>div>div[class="message-error error message"]'
    
    
    def fazer_login
        cp_login.set $login_t        
        cp_senha.set $senha_t        
    end

    def clicar_login
        btn_login.click              
    end

    def validar_login
        $content_login = box_login.text
    end

    def validar_msgError1
        $msg_loginOf = msg_loginOf.text        
    end


    def validar_msgError2        
        $msg_passOf = msg_passOf.text
    end

    def validar_msgError3
        $msg_acessOf = msg_loginError
    end
   

end