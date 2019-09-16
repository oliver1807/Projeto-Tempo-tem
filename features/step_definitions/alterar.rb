Dado("que estou na area logada") do
    @alterar_page.validar_areaLogin
    expect($login_t).to have_content @dado_login
  end
  
  Quando("acesso a tela de Dados pessoais") do
    @alterar_page.aces_mConta
  end
  
  Quando("altero o sobrenome") do
    @alterar_page.alt_sNome
    @alterar_page.conf_cad
  end
  
  Então("alteração é realizada com sucesso") do
    @alterar_page.aces_mConta
    @alterar_page.val_alt
    sleep 3
    
    puts $sobrenome_alt
    puts @sobrenome

    
    
  end