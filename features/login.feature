#language: pt

Funcionalidade: Login
    Para acessar o site desejado
    Sendo um usuário cadastrado
    Posso acessar o sistema com email e senha

    @login_unhappy
    Cenario: Acesso Inválido
        Quando eu faço login com "123@inmetrics.auto" e "123456"
        Entao não devo ser autenticado
        E devo ver a mensagem "ERRO! Usuário ou Senha inválidos"