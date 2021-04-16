class CadastroFuncPage < SitePrism::Page
    include Capybara::DSL
    element :cadNovoFunc, 'a[href="/empregados/new_empregado"]'
    element :campoNome, '#inputNome'
    element :campoCPF, '#cpf'
    element :dropdownSexo, 'slctSexo'
    element :dataAdmissao, '#inputAdmissao'
    element :campoCargo, '#inputCargo'
    element :campoDinheiro, '#dinheiro'
    element :radioCLT, "#clt"
    element :radioPJ, "#pj"
    element :botaoEnviar, '.cadastrar-form-btn'
    element :botaoCancelar, '.cancelar-form-btn'
    
    def entrarTelaCadastro
        visit "/accounts/login/"
        cadNovoFunc.click
    end
    
    def cadastrarFuncionario
        # (OBS, poderia-se utilizar a gem "faker" para gerar todos os dados randomicamente)
        campoNome.set('Automacao')
        # CPF gerado aleatoriamente 
        campoCPF.set('176.713.010-43')
        # Estrutura do capybara para selecionar valores de um dropdown
        select 'Masculino', from(dropdownSexo)
        dataAdmissao.set('01/01/21')
        campoCargo.set('Engenheiro de Automacao')
        campoDinheiro.set('10000')
        # metodo do capybara para escolher radio button 
        choose(radioCLT)
        botaoEnviar.click
    end

    def validarCadastroSucesso
        # O serviço da pagina está off e redirecina para uma pagina com um erro quando o botão de enviar é clicado
    end

end
