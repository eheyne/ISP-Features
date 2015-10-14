puts "Assignment 2 Grader"

file = ARGV[0]

File.open(file, "r") do |file_handle|
  file_handle.each_line do |url|
    sections = url.split("/")
    id = sections[3] 
    ENV["STUDENT_URL"] = url.strip
    echo_student_url_cmd = "echo $STUDENT_URL"
    value = %x(#{echo_student_url_cmd})
    puts "STUDENT_URL is #{value}"
    cucumber_cmd = "bundle exec cucumber --tag @Assignment2 --format html > ./output/Assignment2/#{id}.html"
    puts "Executing command: #{cucumber_cmd}"
    %x(#{cucumber_cmd})
  end
end
