Before do
    @login = LoginPage.new
    @cadastro = CadastroPage.new
    @cadFunc = CadastroFuncPage.new
    page.current_window.resize_to(1440, 900)
end

After do |scenario|
    if scenario.failed?
        temp_shot = page.save_screenshot("log/temp_shot.png") 
        screenshot = Base64.encode64(File.open(temp_shot).read)
        embed(screenshot, "image/png", "Screenshot")
    end
end