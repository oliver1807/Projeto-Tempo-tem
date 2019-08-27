class AlterarPage < SitePrism::Page
    set_url CONFIG['url_login']

    element :dado_login, 'div[class*=box-information]'
    element :lk_acesConta, 'li[class="nav item"]>a[href*="account/edit"]'


    def validar_areaLogin
        @dado_login = dado_login
    end


    def aces_mConta
        lk_acesConta.click
    end

end