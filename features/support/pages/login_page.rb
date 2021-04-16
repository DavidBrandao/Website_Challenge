class LoginPage < SitePrism::Page
    include Capybara::DSL
    element :campoEmail, "input[name='username']"
    element :campoSenha, "input[name='pass']"
    element :alertText, ".alert-danger"
    
    def go
        visit "/accounts/login/"
    end

    def logar(email, senha)
        campoEmail.set(email)
        campoSenha.set(senha)
        clickBotaoEntrar
    end

    def clickBotaoEntrar
        click_button 'Entre'
    end

    def mensagemAlerta
        alertText.text
    end
end
