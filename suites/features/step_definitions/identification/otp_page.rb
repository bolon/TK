When('I see otp validation') do
  expect(page).to have_selector('input')
end

Then('I get the otp and fill the field') do
  otp = get_otp("email", PredefinedVars.valid_email.split('@')[0])
  find(:xpath, "//input[@name='otp']").set(otp)
end

def get_otp(method, identifier)
  case method
  when "email"
    get_otp_from_email(identifier)
  when "phone"
    raise "Method \"#{method}\" is undefined, try [email]"
  else
    raise "Method \"#{method}\" is undefined, try [email, phone]"
  end
end

def get_otp_from_email(address)
  sleep(5)  #explicitly wait 5s to make sure latest otp email received
  new_window = open_new_window
  switch_to_window new_window
  otp = 0
  
  visit "https://www.mailinator.com/v3/index.jsp?zone=public&query=#{address}"
  find(:xpath, "//tbody//tr[contains(@ng-repeat, 'email')][1]//a").click()
  within_frame 'msg_body' do
    otp = find(:xpath, "/html/body/div/div[2]/div[2]/p[2]/span").text
  end

  #closing window
  window = page.driver.browser.window_handles
  page.driver.browser.switch_to.window(window.last)
  page.driver.browser.close
  page.driver.browser.switch_to.window(window.first)

  return otp
end
