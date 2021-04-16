require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require 'site_prism'


CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))

case ENV["BROWSER"]
    when "firefox"
        @driver = :selenium
    when "chrome"
        @driver = :selenium_chrome
    when "headless"
        @driver = :selenium_chrome_headless
    else
        puts "Browser Inválido"
end


Capybara.configure do |config|
    # Using Chrome
    config.default_driver = @driver
    config.default_max_wait_time = 15
    config.app_host = CONFIG["url"]
  
    # Using Firefox
    # config.default_driver = :selenium
end
