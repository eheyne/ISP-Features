require 'page-object'

class Assignment2Page
  include PageObject

  page_url "http://#{ENV['SERVER_IP']}/UserId/Assignment2/index.html"

end
