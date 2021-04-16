Dado("que eu acesso a tela de cadastro de funcionario") do
    # Pagina abre de forma diferente quando sendo controlada por automação/microsoft edge
    # Não apresenta os mesmos menus de acesso de tela
    # Logo o step está falhando, verificar imagem anexada ao relatorio de testes
    @cadFunc.entrarTelaCadastro
end
  
Quando("preencher os campos relacionados ao dado do novo funcionario") do
    @cadFunc.cadastrarFuncionario
end
  
Entao("o funcionário deve ser criado com sucesso") do
    @cadFunc.validarCadastroSucesso
end