require 'watir-webdriver'

# World(PageObject::PageFactory)

Given /^A browser is installed on the machine$/ do
puts "hello checkpoint 1"
  @browser.nil?.should == false
puts "to test if browser opened #{@browser.inspect}"
end

Given /^Successful navigation to a students page$/ do
  url = ENV['STUDENT_URL']
  @browser.goto url
  sleep 2
  @browser.url.should == url
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

    Then /^I validate that an link tag exists$/ do
    a=@browser.a
    a.exists?.should == true
	a.text.length.should > 0
	end
	
	Then /^I validate that an unordered list with an id of "([^\"]*)" exists$/ do |id|
    ul = @browser.ul :id => id	
	ul.exists?.should == true
	ul.text.length.should > 0
	
	end
	
	Then /^I validate that an ordered list with an id of "([^\"]*)" exists$/ do |id|
    ol = @browser.ol :id => id
	ol.exists?.should == true	
	ol.text.length.should > 0
	
	end
	
	Then /^I validate that a table with id of "([^\"]*)",header,columns and rows exists$/ do |id|
    table = @browser.table :id => id
	table.exists?.should == true
	th=table.th
	th.exists?.should == true
	th.text.length.should > 0
	tr=table.tr
	tr.exists?.should == true
	puts "tr is #{tr.inspect}"
	tr.text.length.should > 0
	td=table.td	
	td.exists?.should == true
		td.text.length.should > 0
	end
	
Then /^I validate that a document level CSS exists$/ do 
	styleElementLength = 0
	@browser.elements.each do |element|
		if element.tag_name == 'head'
			element.elements.each do |headElement|
				if headElement.tag_name == 'style'
					styleElementLength = headElement.html.length
					puts "headElement.html is #{headElement.html} with a length of #{headElement.html.length}"
				end
				puts "head elements is #{headElement.tag_name}"
			end
		end
	end
	styleElementLength.should > 0
end

Then /^I validate that a external level CSS exists$/ do 
	linkElementLength = 0
	@browser.elements.each do |element|
		if element.tag_name == 'head'
			element.elements.each do |headElement|
				if headElement.tag_name == 'link'
					linkElementLength = headElement.html.length
					puts "headElement.html is #{headElement.html} with a length of #{headElement.html.length}"
				end
				puts "head elements is #{headElement.tag_name}"
			end
		end
	end
	linkElementLength.should > 0

  end
  
 Then /^I validate that a inline level CSS exists$/ do
 inlineElementLength = 0
	@browser.elements.each do |element|
		if element.tag_name == 'body'
			element.elements.each do |bodyElement|
				
					if (bodyElement.style.length>0)
					inlineElementLength = bodyElement.style.length 
					puts "bodyElement.html is #{bodyElement.style} with a length of #{bodyElement.style.length}"
				end
				end
		end
	end
	inlineElementLength.should > 0
 end
	

