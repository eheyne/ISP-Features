require 'watir-webdriver'

# World(PageObject::PageFactory)

Given /^A browser is installed on the machine$/ do
  @browser.nil?.should == false
end

Given /^Successful navigation to a students page$/ do
  url = ENV['STUDENT_URL']
  @browser.goto url
  sleep 2
  @browser.url.should == url
end

Then /^the title of the current page is "([^\"]*)"/ do |page_title|
  @browser.title.upcase.should == page_title.upcase
end

Then /^I validate that a span tag with an id of "([^\"]*)" exists$/ do |id|
  span = @browser.span :id => id
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
  h1.text.upcase.should == content.upcase
end
  
Then /^I validate that a h2 tag with an id of "([^\"]*)" and content "([^\"]*)" exists$/ do |id,content|
  h2=@browser.h2 :id =>id
  h2.text.upcase.should == content.upcase
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
	
Then /^I display the styles defined$/ do
	@browser.elements.each do |element|
		if element.tag_name == 'body'
			element.elements.each do |bodyElement|
        if bodyElement.style('background-color').length > 0
          puts "<p>background-color of #{bodyElement.style('background-color')} exists for element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style('font-size').length > 0
          puts "<p>font-size of #{bodyElement.style('font-size')} exists for element #{bodyElement.tag_name}</p>"
        end
        # if bodyElement.style('color').length > 0
        #   puts "<p>color exists for element #{bodyElement.tag_name}</p>"
        # end


        if bodyElement.style.include? "font"
          puts "<p>font style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "text"
          puts "<p>text style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "list-style-image"
          puts "<p>list-style-image style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "color"
          puts "<p>color style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "padding"
          puts "<p>padding style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "margin"
          puts "<p>margin style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "background"
          puts "<p>background style exists inline in the element #{bodyElement.tag_name}</p>"
        end
        if bodyElement.style.include? "border"
          puts "<p>border style exists inline in the element #{bodyElement.tag_name}</p>"
        end
      end
		end
	end
  true.should == true
end

Then /^I display the styles defined in the document$/ do
	styleElementLength = 0
	@browser.elements.each do |element|
		if element.tag_name == 'head'
			element.elements.each do |headElement|
				if headElement.tag_name == 'style'
				puts "head elements is #{headElement.tag_name}"
				puts " headElement are #{headElement.style}"
										if headElement.text.include?"color"
										styleElementLength = 10
					puts "headElement.html is #{headElement.html} with a length of #{headElement.html.length}"
				end
				end
			end
		end
	end
	styleElementLength.should > 0
end 

Then /^I validate that a form tag exists$/ do
  form=@browser.form
  form.exists?.should == true
end

When /^I validate that a form field with the name "([^\"]*)" and type "([^\"]*)" exists$/ do |name, type|
  @input=@browser.input :name => name, :type => type
  
  if !@input.exists? then
    @input=@browser.input:name => name + "s", :type => type
  end

  @input.exists?.should == true
end

Then /^I validate that the form field with the name "([^\"]*)" has a default value of 0$/ do |name|
  @input=@browser.input :name => name
  (/^[0]*\.?[0]*$/ =~ @input.value).should_not == nil
  @input.exists?.should == true
end

Then /^I validate that the name field does not have any numeric values$/ do
  @input.value.length.should > 0
  (/\d+/ =~ @input.value).should == nil
end

Then /^I validate that the password has at least 8 characters including at least 1 number$/ do
  @input.value.length.should >= 8
  (/\d+/ =~ @input.value).should_not == nil
end

Then /^I validate that the email field has the form asdf@asdf.com$/ do
  @input.value.length.should > 0
  (/\b[\w]+@[\w]+\.[\w]{2,4}\b/ =~ @input.value).should_not == nil
end

Then /^I validate that the phone field has the form 123-123-1234$/ do
  @input.value.length.should > 0
  (/\b[\d]{3}-[\d]{3}-[\d]{4}\b/ =~ @input.value).should_not == nil
end

When /^I enter the value "([^\"]*)" in the "([^\"]*)" form text field$/ do |number, name|
  @input=@browser.text_field :name => name
  @input.set number
end

And /^I click the submit button$/ do
  submit_button=@browser.element(:css => "input[type=submit]")
  submit_button.click
  sleep 2
end

And /^I click the "([^\"]*)" button$/ do |name|
  @output_value=(@browser.text_field :name => "output").value.to_f
  @input=@browser.input :name => name
  if !@input.exists? then
    @input=@browser.input:name => name + "s"
  end
  @button_clicked = name
  @input.click
end

Then /^I should see the correct result in the "([^\"]*)" form field$/ do |name|
  input_value=(@browser.text_field :name => "input").value.to_f
  @output=(@browser.input :name => name).value.to_f
  @output.should == (@output_value + input_value) if @button_clicked == "add"
  @output.should == (@output_value - input_value) if @button_clicked == "subtract"
  @output.should == (@output_value * input_value) if @button_clicked == "multiply" 
  @output.should == (@output_value / input_value) if @button_clicked == "divide" 
  @output.should == input_value if @button_clicked == "equal" || @button_clicked == "equals"
end

And /^I leave the input field with the name "([^\"]*)"$/ do |name|
  form_text_field=(@browser.text_field :name => name)
  form_text_field.send_keys :tab
end

And /^I clear all of the form data$/ do
  all_text_inputs=@browser.elements(:css => "input[type=text]")
  all_text_inputs.each do |input|
    puts "#{input.text}"
  end 
end

Then /^I should see the correct value of "([^\"]*)" in the "([^\"]*)" form text field$/ do |value, name|
  puts ("value is #{value} and name is #{name}")
  form_text_field=(@browser.text_field :name => name)
  form_text_field.value.should == value
end
