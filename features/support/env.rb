require "rspec"
require "cucumber"
require "capybara"
require "selenium-webdriver"
require "site_prism"

Capybara.register_driver :site_prism do |app|
  Capybara::selenium::Driver.new(app, browser: :remote, :url => "http://localhost:4444/wd/hub", :desired_capabilities => :chrome)
end

Capybara.configure do |config|
  config.run_server = false
  Capybara.default_driver = :site_prism
  Capybara.page.driver.browser.manage.window.maximize
  config.default_max_wait_time = 15
  config.app_host = "http://automationpractice.com/index.php"
end
