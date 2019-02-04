require 'site_prism'
require 'rspec'
require 'capybara/cucumber'
require 'selenium/webdriver'

require_relative 'pages/google_page'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,
                                 :browser => :remote,
                                 :url => 'http://localhost:4444/wd/hub',
                                 :desired_capabilities => :chrome)
end