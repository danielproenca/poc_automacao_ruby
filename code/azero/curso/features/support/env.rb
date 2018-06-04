require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'

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

  config.app_host = 'https://ninjamotors.herokuapp.com'
end

Capybara.default_max_wait_time = 15.to_i