puts "Assignment 4 Tester"

ENV["STUDENT_URL"] = "http://pausch.cs.uakron.edu/~ejh15/calculator.php"
echo_student_url_cmd = "echo $STUDENT_URL"
value = %x(#{echo_student_url_cmd})
puts "STUDENT_URL is #{value}"
cucumber_cmd = "cucumber --tag @Tested --format html > output.html"
puts "Executing command: #{cucumber_cmd}"
%x(#{cucumber_cmd})
open_output_html_cmd = "open output.html"
%x(#{open_output_html_cmd})
