require 'watir-webdriver'

# World(PageObject::PageFactory)

Given /^A browser is installed on the machine$/ do
  @browser.nil?.should_not be_true
end

Then /^the title of the current page is "([^\"]*)"/ do |page_title|
  @browser.title.should == page_title
end

When /^Page render is complete$/ do
  pending
end

Then /^I validate that a p tag exists on the page$/ do
  pending
end
