require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require 'faker'



CONFIG = YAML.load_file("./features/support/config/url.yml")

Before do |scenario|
    Capybara.configure do |config|
        config.default_driver = :selenium_chrome
        config.app_host = CONFIG["url_login"]
        config.app_host = CONFIG["url_4devs"]
    end

   

    Capybara.page.driver.browser.manage.window.maximize
    Capybara.default_max_wait_time=10    

    @login_page = LoginPage.new
    @fourdevs_page = FourdevsPage.new
    @cadastro_page = CadastroPage.new

end