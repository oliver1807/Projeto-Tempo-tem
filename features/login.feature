#language :pt

Funcionalidade: Login no site da Tempo Tem
    Sendo um usuário no site
    Posso informar os dados nos campos de Login
    Para acesso na conta

@login_ok
Cenario: Login com sucesso

       Dado que acesso o site da tempo tem
       Quando informo os dados de login e senha
       Então acesso a minha conta com sucesso