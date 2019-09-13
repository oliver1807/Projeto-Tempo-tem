#language :pt
@login_fail

Funcionalidade: Login falhado
    Sendo um usuario
    Posso informar dados invalidos
    Para ter retorno negativo


Contexto: Acesso
    Dado que acesso o site da tempo tem


Esquema do Cenario: Login fail    
    Quando informo o "<login>" e a "<senha>"
    Então login da erro e sistema retorna "<mensagem>" de erro "<controle>"

    Exemplos:
      | login                                   | senha     | mensagem                                                                                                                        | controle |
      |                                         |           | Um login e uma senha são necessários.                                                                                           |     1    |
      |                                         | senha@123 | Esse campo é obrigatório.                                                                                                       |     2    |
      | tstprod01@bol.com.br                    |           | Esse campo é obrigatório.                                                                                                       |     3    |
      | aaa                                     | senha@123 | Por favor insira um endereço de email válido (Ex: exemplo@dominio.com).                                                         |     2    |
      | tstprod01@bol.com.br                    | senha12   | O login da conta estava incorreto ou sua conta está desativada temporariamente. Por favor, espere e tente novamente mais tarde. |     4    |        

        