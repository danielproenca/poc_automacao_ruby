require 'airborne'
require 'capybara'
require 'capybara/cucumber'
require 'cucumber'
require 'faker'
require 'site_prism'
require 'httparty'

@browser = ENV['BROWSER']

if @browser.eql?('headless')
  Capybara.register_driver :selenium do |app|
    Capybara::Poltergeist::Driver.new(app, js_errors: false)
  end
end

Capybara.configure do |config|
  if @browser.eql?('firefox')
    config.default_driver = :selenium
  elsif @browser.eql?('chrome')
    config.default_driver = :selenium_chrome
  else
    config.default_driver = :selenium
  end
  config.app_host = 'https://www.phptravels.net'
end

Capybara.default_max_wait_time = 15.to_i