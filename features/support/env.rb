require "rspec"
require "capybara/cucumber"
require "site_prism"
require "cucumber"
require "webdrivers"
require "selenium-webdriver"

Capybara.register_driver :site_prism do |app|
  browser = ENV.fetch("browser", "firefox").to_sym
  Capybara::Selenium::Driver.new(app, browser: browser, desired_capabilities: capabilities)
end

# Then tell Capybara to use the Driver you've just defined as its default driver
Capybara.configure do |config|
  config.run_server = false
  config.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 15
  config.app_host = "https://itera-qa.azurewebsites.net/"
end
