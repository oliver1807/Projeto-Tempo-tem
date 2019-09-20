class CompraPage < SitePrism::Page
    element :btn_selDom, '#ui-id-2'
    element :link_chave, 'ol[class=items]>li>a[href*="servicos/chaveiro-residencial"]'
    element :serv_chave, 'div[class*=details]>strong[class*=item-name]>a[href*=manutencao-de-trinco]'
    element :btn_queroAgora, 'button[data-trigger=want-now]'
    element :btn_addCar, 'div[class=actions]>button[id*=addtocart]'
    element :pg_1, :xpath,'//*[@id="ajaxresponse"]/div[2]/ul/li[1]/a'
    element :sel_pgCard, 'div[class*=choice]'
    element :set_nomeCard, 'input[class*=adyen-checkout]'
    element :cp_numCartao, 'body>input[id=encryptedCardNumber]'

    def sel_residencial
        btn_selDom.click
        link_chave.click
        serv_chave.click        
        btn_queroAgora.click        
        btn_addCar.click
        pg_1.click
    end

    def inf_cartao
        sel_pgCard.click
        set_nomeCard.set($cartao[:comprador])

    end

    def abrir_iframe
        begin
            within_frame(:xpath,'//*[@id="cardContainer"]/div/div[2]/div[2]/div[1]/label/span[2]/span/iframe', :wait => 5) do                        
                cp_numCartao.set($cartao[:numero])
                binding.pry
            sleep 5
            end
        
        end
    end


end