require 'watir-webdriver'

# World(PageObject::PageFactory)

Given /^A browser is installed on the machine$/ do
puts "hello checkpoint 1"
  @browser.nil?.should == false
puts "to test if browser opened #{@browser.inspect}"
end

Given /^Successful navigation to a students page$/ do
  url1 = 'http://localhost/Testhtml/index.html'
  @browser.goto url1
  @browser.url.should == url1
puts "browser URL is set to #{@browser.inspect}"
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

Then /^I validate that a h1 tag with an id of "([^\"]*)" and content "([^\"]*)" exists$/ do |id,content|
  h1=@browser.h1 :id =>id
  h1.text.should == content
end
  
Then /^I validate that a h2 tag with an id of "([^\"]*)" and content "([^\"]*)" exists$/ do |id,content|
  h2=@browser.h2 :id =>id
  h2.text.should == content
end

Then /^I validate that a line break exists$/ do
  br=@browser.br
  br.exists?.should == true
end

Then /^I validate that a horizontal rule exists$/ do
  hr=@browser.hr
  hr.exists?.should == true
end

Then /^I validate that an image with source and alt exists$/ do
  img=@browser.img
    img.exists?.should == true
	img.src.length.should > 0 
	img.alt.length.should > 0
end

