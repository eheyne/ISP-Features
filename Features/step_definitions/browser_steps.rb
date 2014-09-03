require 'watir-webdriver'

# World(PageObject::PageFactory)

Given /^A browser is installed on the machine$/ do
  @browser.nil?.should == false
end

Given /^Successful navigation to a students page$/ do
  url = 'http://localhost:8000/test.html'
  @browser.goto url
  @browser.url.should == url
end

Then /^the title of the current page is "([^\"]*)"/ do |page_title|
  puts "page_title is #{page_title}"
  @browser.title.should == page_title
end

Then /^I validate that a span tag with an id of "([^\"]*)" exists$/ do |id|
  span = @browser.span :id => id
  puts "span.style is #{span.style.inspect}"
  span.text.length.should > 0
  span.exists?.should == true
end

Then /^I validate that a p tag with an id of "([^\"]*)" exists$/ do |id|
  p = @browser.p :id => id
  p.text.length.should > 0
  p.exists?.should == true
end
