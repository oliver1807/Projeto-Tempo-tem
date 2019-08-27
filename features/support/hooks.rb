Before ('@Buscar_cpf') do
    @fourdevs_page.load
    @fourdevs_page.gerar_cpf
end

Before('@logar') do
    @cadastro_page.load
    $login_t = 'ter_luciano.oliveira@tempoassist.com.br'
    $senha_t = 'senha@123'
    @login_page.fazer_login
    @login_page.clicar_login        
end