class FourdevsPage < SitePrism:: Page
     set_url CONFIG['url_4devs']

    element :frdevsn, :xpath,'//*[@id="app-wrapper"]/div[2]/div[2]/div[1]/div[3]/label/span'
    element :btnfrdevs, '#bt_gerar_cpf'
    element :nmcpf, 'div[id="texto_cpf"]'

    def gerar_cpf        
        frdevsn.click
        btnfrdevs.click
        sleep 2
        $nmcpf=nmcpf.text      
    end    

end