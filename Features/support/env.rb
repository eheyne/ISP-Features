$LOAD_PATH.unshift File.join(File.dirname(__FILE__), '../../lib')

require 'watir-webdriver'
require 'ua_browser'

ENV['BROWSER']         = "chrome"       unless ENV['BROWSER']

puts "The browser type is #{ENV['BROWSER']}"

client = Selenium::WebDriver::Remote::Http::Default.new
client.timeout = 180 # seconds – default is 60

if ENV["SINGLE_BROWSER"] then
  browser = UaBrowser.new
else
  browser = nil
end

Before do
  if ENV["SINGLE_BROWSER"] then
    @browser = browser
  else
    @browser = UaBrowser.new
  end
end

After do |scenario|
  if scenario.failed?
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.screenshot.save screenshot
  end

  @browser.quit unless ENV["SINGLE_BROWSER"]
end

at_exit do
  if ENV["SINGLE_BROWSER"] then
    browser.close
  end
end
