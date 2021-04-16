Dado("que eu acesso a tela de cadastro") do
    @cadastro.entrarTelaCadastro  
end
  
Quando("preencher os campos com o email {string} e senha {string} e submeter a operação") do |email, senha|
  @cadastro.cadastrar(email, senha)
end
  
Entao("devo ser redirecionado para a tela de login") do
  expect(page).to have_text('Login')
end