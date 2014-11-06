puts "Assignment 4 Grader"

file = ARGV[0]

ENV["SINGLE_BROWSER"] = "true"

File.open(file, "r") do |file_handle|
  file_handle.each_line do |url|
    sections = url.split("/")
    id = sections[3] 
    ENV["STUDENT_URL"] = url.strip
    echo_student_url_cmd = "echo $STUDENT_URL"
    value = %x(#{echo_student_url_cmd})
    puts "STUDENT_URL is #{value}"
    cucumber_cmd = "cucumber --tag @Ready4 --format html > ./output/Assignment4/#{id}.html"
    puts "Executing command: #{cucumber_cmd}"
    %x(#{cucumber_cmd})
  end
end
