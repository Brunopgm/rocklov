require "capybara" #importando o Capybara
require "capybara/cucumber" #importando modulo do capybara

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end
#config.default_driver - Definição do driver que será utilizado
#Por padrão se deixar somente o :selenium  o capybara iria executar a automação no firefox
