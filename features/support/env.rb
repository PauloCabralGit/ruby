require 'site_prism'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require_relative 'page_help.rb'
require_relative 'helper.rb'

BROWSER = ENV['BROWSER']
AMBIENTES = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTES}.yml")

World(PageObjects)
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Helper)

Capybara.register_driver :selenium do |app|

    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('chrome_headless') 
        Capybara::Selenium::Driver.new(app, :browser => :chrome, 
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {'args' =>['--headless', 'disable-gpu']}
        )
        )  
      #elsif BROWSER.eql?('firefox') 
      #    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)   
      #elsif BROWSER.eql?('ie')
       #    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
      #elsif BROWSER.eql?('safari')
       #    Capybara::Selenium::Driver.new(app, :browser => :Safari)
    end      

end


Capybara.configure do |config|
 
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5

end
