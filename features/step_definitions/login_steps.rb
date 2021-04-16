Quando('eu faço login com {string} e {string}') do |email, senha|
    # Acessando a url padrão e tentando logar com informações da feature
    @login.go
    @login.logar(email, senha)
end
  
Entao('não devo ser autenticado') do
    # Validando que Popup de erro esta visivel
    @mensagemErro = @login.mensagemAlerta
end
  
Entao('devo ver a mensagem {string}') do |mensagemEsperada|
    # Comparando mensagem do popup de erro com valor passado na feature
    expect(@mensagemErro).to have_content(mensagemEsperada)
end