#Tudo que for escrito nesse arquivo será executado antes de qualquer coisa no projeto
require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end