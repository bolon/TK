#should have been stored in a secret file
module PredefinedVars
  #test.tiket2299@mailinator.com
  #test.tiket2300@mailinator.com
  #test.tiket2301@mailinator.com
  #test.tiket2302@mailinator.com
  def self.valid_email
    "test.tiket2300@mailinator.com"
  end
  def self.valid_password
    "Test123456!"
  end
end

module EnvVars
  def self.url_site_under_test
    "https://www.tiket.com"
  end
end