#language :pt

Funcionalidade: Login no site da Tempo Tem
    Sendo um usuário no site
    Posso informar os dados nos campos de Login
    Para acesso na conta

@login_ok
Cenario: Login com sucesso

       Dado que acesso o site da tempo tempo
       Quando informo os dados de login e senha
       Então acesso a minha conta com sucesso

@fail_login_geral  @fail_loginOf
Cenario: Tentativa de acesso sem login informado

    Dado que acesso a tela de login
    Quando não preencho o login e preencho o campo senha
    Entao login sem e-mail falha e sistema retorna Esse campo e obrigatório


@fail_login_geral  @fail_senhaOf
Cenario: Tentativa de acesso sem login informado

    Dado que acesso a tela de login
    Quando preencho o login e não preencho o campo senha
    Entao login sem senha falha e sistema retorna Esse campo e obrigatório


@fail_login_geral  @login_invalido
Cenario: Tentativa de acesso com login invalido

    Dado que acesso a tela de login
    Quando preencho o login com dado invalido e preencho a senha
    Entao login invalido falha e sistema retorna 'Por favor inisira um endereço de e-mail válido (Ex: exemplo@dominio.com).'


@fail_login_geral  @login_errado
Cenario: Tentativa de acesso com login invalido

    Dado que acesso a tela de login
    Quando preencho o login com dado valido e preencho a senha errada
    Entao login errado falha e sistema retorna 'O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde.'

