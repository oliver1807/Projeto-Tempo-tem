#language :pt

Funcionalidade: Compra no site da Tempo Tem
    Sendo um usuário no site
    Posso selecionar determinado serviço
    Para agendamento e compra

@compra_geral @compra_servDomiciliar @logar
Cenario: Compra Serviço domiciliar

       Dado que acesso o site da tempo tem
       Quando seleciono serviço de Manutenção de Trinco
       E concluo o processo de checkout com "cartão de crédito"
       Então compra é realizada com sucesso