Dado("que acesso o site da tempo tempo") do
    @login_page.load
end
  
  Quando("informo os dados de login e senha") do
    $login_t = 'ter_luciano.oliveira@tempoassist.com.br'
    $senha_t = 'senha@123'
    @login_page.fazer_login
    @login_page.clicar_login    
end
  
  Então("acesso a minha conta com sucesso") do
    @login_page.validar_login
    expect($content_login).to have_content($login_val)
  end