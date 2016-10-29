require 'watir'
require 'watir-webdriver'

browser = Watir::Browser.new :chrome

Before do | scenario |
  @browser = browser
  puts "Starting scenario: #{scenario.name}"
end

After do | scenario |
  if scenario.failed?
    subject = "[gurusorocaba] #{scenario.exception.message}"
  end
end

at_exit do
  browser.close
end
