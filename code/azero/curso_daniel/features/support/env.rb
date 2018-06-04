require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'capybara/poltergeist'

@browser = ENV['BROWSER']


if @browser.eql?('headless')
    Capybara.registrer_driver :selenium do |app|
        Capybara::Poltergeist::Driver.new(app, js_erros: false)
    end
end

Capybara.configure do |config|
 if @browser.eql?('chrome')
    config.default_driver = :selenium_chrome
  elsif @browser.eql?('firefox')
    config.default_driver = :selenium
  else
    config.default_driver = :selenium
 end

 config.app_host = 'https://ninjamotors.herokuapp.com'
end

Capybara.default_max_wait_time = 30

#https://ninjamotors.herokuapp.com/
#no capybara use regex /^departure-link/
#document.querySelector("span[id^=departure-link] span[class^=input-holder__text]").value