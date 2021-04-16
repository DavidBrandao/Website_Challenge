class CadastroPage < SitePrism::Page
    include Capybara::DSL
    element :campoConfirmaSenha, "input[name=confirmpass]"
    
    def entrarTelaCadastro
        visit "/accounts/signup/"
    end
    
    def cadastrar(email, senha)
        elementosLogin = LoginPage.new
        elementosLogin.campoEmail.set(email)
        elementosLogin.campoSenha.set(senha)     
        campoConfirmaSenha.set(senha)
    end

    def clickBotaroCadastrar
        click_button 'Casdastrar'
    end

end
