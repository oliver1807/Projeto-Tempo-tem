#language :pt

Funcionalidade: Cadastro no site da Tempo Tem
    Sendo um usuário no site
    Posso acessar o módulo de cadastro do site
    Para cadastrar os meus dados para agendamento

@Cadastro_ok @Buscar_cpf
Cenario: Cadastro de cliente

       Dado que acesso o site da tempo tem
       Quando acesso a tela de cadastro de cliente
       E preencho os dados
       Então cadastro a minha conta com sucesso