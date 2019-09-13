Dado("que acesso o site da tempo tem") do
    @cadastro_page.load
  end
  
  Quando("acesso a tela de cadastro de cliente") do
    @cadastro_page.acess_cadastro
  end
  
  Quando("preencho os dados") do
    @cadastro_page.insert_dados   
  end
  
  Então("cadastro a minha conta com sucesso") do
    val_cad = "batata"
    @cadastro_page.finalizar_cadastro
    expect(val_cad).to have_content $msg_sucess        
  end