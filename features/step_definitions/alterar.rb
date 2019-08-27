Dado("que estou na area logada") do
    @alterar_page.validar_areaLogin
    expect($login_t).to have_content @dado_login
  end
  
  Quando("acesso a tela de Dados pessoais") do
    @alterar_page.aces_mConta
  end
  
  Quando("altero o sobrenome") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Então("alteração é realizada com sucesso") do
    pending # Write code here that turns the phrase above into concrete actions
  end