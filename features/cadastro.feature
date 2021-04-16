#language: pt

Funcionalidade: Cadastro de usuário
    Para acessar cadastrar um usuário no site desejado
    Sendo um novo funcionario na plataforma
    Posso acessar a tela de Cadastro para inserir um novo usuário


    @cadastro
    Cenario: Cadastro de usuário
        Dado que eu acesso a tela de cadastro
        Quando preencher os campos com o email "abc@gmail.com" e senha "123456" e submeter a operação
        Entao devo ser redirecionado para a tela de login