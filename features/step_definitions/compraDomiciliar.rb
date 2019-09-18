Quando("seleciono serviço de Manutenção de Trinco") do
    @compra_page.sel_residencial    
  end
  
  Quando("concluo o processo de checkout com {string}") do |cartao|
    cartao = Hash[comprador:'Juca Teste', numero:4111111111111,validade:1020,cvv:737]    
    $cartao = cartao    
    @compra_page.inf_cartao
    
    
  end
  
  Então("compra é realizada com sucesso") do
    
  end