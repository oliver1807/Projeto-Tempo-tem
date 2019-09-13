require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'faker'



CONFIG YAML.load_file("./features/support/config/url.yml")

 Before do |scenario|   
    Capybara.configure do |config|
        config.default_driver = @driver
        config.app_host = CONFIG["url_login"]
        config.app_host = CONFIG["url_4devs"]
        Capybara.default_max_wait_time=10
    end

   

    Capybara.page.driver.browser.manage.window.maximize
        

    @login_page = LoginPage.new
    @fourdevs_page = FourdevsPage.new
    @cadastro_page = CadastroPage.new
    @alterar_page = AlterarPage.new

end

