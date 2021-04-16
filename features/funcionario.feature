#language: pt

Funcionalidade: Gestão de Funcionario
    Para acessar a funcionalidade desejado
    Sendo um usuário com permissões de administrador
    Posso acessar o sistema parar gerir o cadastro de um funcionario

    @cadastro_funcionario
    Cenario: Cadastro de funcionario
        Dado que eu acesso a tela de cadastro de funcionario
        Quando preencher os campos relacionados ao dado do novo funcionario
        Entao o funcionário deve ser criado com sucesso