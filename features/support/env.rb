require 'watir'
require 'rspec'
require 'byebug'

browser = Watir::Browser.new
browser.driver.manage.window.maximize

Before do
    @browser = browser
end