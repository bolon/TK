require 'capybara/cucumber'
require 'faker'
require_relative 'predefined_vars.rb'
 
Capybara.default_driver = :selenium_chrome
Capybara.default_max_wait_time = 10