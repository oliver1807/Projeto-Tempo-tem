Dado("que acesso a tela de login") do
  @login_page.load  
end

Quando("não preencho o login e preencho o campo senha") do
  $login_t = ' '
  $senha_t = 'senha@123'
  @login_page.fazer_login
  @login_page.clicar_login
end

Entao("login sem e-mail falha e sistema retorna Esse campo e obrigatório") do
  msg_er1 = 'Esse campo é obrigatório.'
  @login_page.validar_msgError1
  expect(msg_er1). to eql $msg_loginOf   
end

Quando("preencho o login e não preencho o campo senha") do
  $login_t = 'tstprod01@bol.com.br'
  $senha_t = ''
  @login_page.fazer_login
  @login_page.clicar_login
end

Entao("login sem senha falha e sistema retorna Esse campo e obrigatório") do
  msg_er2 = 'Esse campo é obrigatório.'
  @login_page.validar_msgError2
  expect(msg_er2). to eql $msg_passOf   
end
  

Quando("preencho o login com dado invalido e preencho a senha") do
  $login_t = 'a'
  $senha_t = 'senha@123'
  @login_page.fazer_login
  @login_page.clicar_login
end

Entao("login invalido falha e sistema retorna {string}") do |string|
  msg_er3 = 'Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).'
  @login_page.clicar_login
  @login_page.validar_msgError1
  expect(msg_er3). to eql $msg_loginOf
end

Quando("preencho o login com dado valido e preencho a senha errada") do
  $login_t = 'tstprod01@bol.com.br'
  $senha_t = 'senha555'
  @login_page.fazer_login
  @login_page.clicar_login  
end

Entao("login errado falha e sistema retorna {string}") do |string|
  msg_er4 = 'O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde.'    
  @login_page.validar_msgError1
  expect(msg_er4). to eql $msg_acessOf
end

