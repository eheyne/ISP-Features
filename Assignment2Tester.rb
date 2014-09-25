puts "Assignment 2 Tester"

ENV["STUDENT_URL"] = "http://localhost:8000/index.html"
echo_student_url_cmd = "echo $STUDENT_URL"
value = %x(#{echo_student_url_cmd})
puts "STUDENT_URL is #{value}"
cucumber_cmd = "cucumber --tag @Test --format html > output.html"
puts "Executing command: #{cucumber_cmd}"
%x(#{cucumber_cmd})
open_output_html_cmd = "open output.html"
%x(#{open_output_html_cmd})
