# **Website_Challenge**

## Este é um simples projeto de automação web utilizando a linguagem ruby como base, os topicos abaixo irão descrever um passo a passo de pre requisitos, como preparar o setup, como rodar o código e por fim onde visualizar o relatorio

1. Pré-requisitos
- Ao baixar este projeto, se faz necessário a instalação da linguagem ruby [Link para download!](https://rubyinstaller.org/downloads/)
- Um editor de textos da sua escolh. Recomendação: [Visual Studio Code] (https://code.visualstudio.com/)
- Download do Chromedriver(chrome) / Gheckodriver(firefox) corespondente a versão do seu navegador [Chromedriver] (https://chromedriver.chromium.org/downloads) [Ghekodriver] (https://github.com/mozilla/geckodriver/releases) 
- Colocar o executável correspondente ao seu navegador no path do sistema (Pasta C: é um local valido)

2. Como preparar o setup
- Acessar a página onde o projeto foi clonado via terminal
- Instalar as dependências de gem's do projeto (Execute os códigos abaixo)
  - gem install bundler
  - bundle install
- Nesta etapa o código está pronto para ser executado

3. Como rodar o código   
O código pode ser rodado de algumas maneiras  
  - Rodar suite completa
    - Executar no terminal o comando: "cucumber" 
  - Rodar apenas cenário específico
    - Executar no terminal o comando: "cucumber -t @nome_da_tag"
  - Caso possua mais de um ambiente (desenvolvimento, release, homologação), pode-se alterar as configurações nos arquivos cucumber.yaml, dev.yaml e hmg.yaml
  4. No cucumber.yaml é possível escolher/montar templates de geração conforme comentado no proprio arquivo

4. Relatórios
  - No cucumber.yaml é possivel definir o tipo de relatorio (html ou json) bem como o seu nome e local de destino 
  - O relatório é gerado automaticamente ao final de toda a execução dos testes
  - Testes que falharam apresentam evidencia de testes, basta clicar no link "screenshot" ao abrir o arquivo html com um    navegador para visualizar o relatório.

