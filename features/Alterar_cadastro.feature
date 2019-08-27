# language: pt

Funcionalidade: Alteração de cadastro no site da Tempo Tem
    Sendo um usuário no site
    Posso acessar meu cadastro
    Para alterar os meus dados

@alt_geral @alt_DadosPessoais @logar
Cenario: Alterar dados pessoais
    Dado que estou na area logada
    Quando acesso a tela de Dados pessoais
    E altero o sobrenome
    Então alteração é realizada com sucesso