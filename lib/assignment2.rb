require 'page-object'

class Assignment2Page
  include PageObject

  page_url "#{ENV['STUDENT_URL']}"

end
