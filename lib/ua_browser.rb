require 'watir-webdriver'

class UaBrowser < Watir::Browser
  def initialize
    browser_type = ENV['BROWSER'].to_sym
    profile = create_profile browser_type
    if profile.nil?
      super(browser_type)
    else
      if browser_type == :chrome
        super(browser_type, :desired_capabilities => profile)
      else
        super(browser_type, :profile => profile)
      end
    end
  end

  def create_profile(browser_type)
    method = "create_#{browser_type}_profile".to_sym
    if self.respond_to?(method)
      return self.send(method)
    else
      return nil
    end
  end

  def create_chrome_profile
    caps = {:prefs => {:download => { :prompt_for_download => false}}}
    Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => caps)
  end

  def create_firefox_profile
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile
  end
end
