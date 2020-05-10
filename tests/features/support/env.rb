require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG =  YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

World(PageObjects)
World(Helper)

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)

    elsif BROWSER.eql?('chrome_headless')
        Capybara::Selenium::Driver.new(app, :browser => :chrome, 
        options: Selenium::WebDriver::Chrome::Options.new(args: ['headless', 'disable-gpu']))

    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)

    elsif BROWSER.eql?('firefox_headless')
        browser_options = Selenium::WebDriver::Firefox::Options.new(args: ['--headless'])
        Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
    end
end

Capybara.configure do |config|
    #:selenium_chrome :selenium_chrome_headless
    config.default_driver = :selenium
    Capybara.page.driver.browser.manage.window.maximize
    #Capybara.page.driver.browser.manage.window.resize_to(1024, 768)
    config.app_host = CONFIG['url_default']
    config.default_max_wait_time = 5
end