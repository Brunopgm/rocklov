require "capybara" #importando o Capybara
require "capybara/cucumber" #importando modulo do capybara
require "faker"
require "allure-cucumber"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://rocklov-web:3000"
    config.default_max_wait_time = 10
end
#config.default_driver - Definição do driver que será utilizado
#Por padrão se deixar somente o :selenium  o capybara iria executar a automação no firefox

AllureCucumber.configure do |config|
    config.result_directory = "/logs"
    config.clean_results_directory = true
end