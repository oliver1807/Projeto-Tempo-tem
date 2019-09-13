Quando("informo o {string} e a {string}") do |loginF, senhaF|
  $login_t = loginF
  $senha_t = senhaF  
  @login_page.fazer_login  
  sleep 1  
  @login_page.clicar_login    
end

Então("login da erro e sistema retorna {string} de erro {string}") do |mensagemF, controleF|  
  $controleF = controleF.to_i
  $mensagemF = mensagemF
  @login_page.validar_msgError
  expect($msg_error).to eql($mensagemF)
end