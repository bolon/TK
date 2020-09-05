Then('I am in login page') do
  expect(page).to have_xpath('//input[@name="username"]')
end

Then('fill-in valid email') do
  fill_email_field(PredefinedVars.valid_email)
end

Then('I see password field') do
  expect(page).to have_xpath('//input[@name="password"]')
end

Then('I fill-in valid password') do
  fill_password_field(PredefinedVars.valid_password)
end

def fill_email_field(email)
  find(:xpath, '//input[@name="username"]').set(email)
end

def fill_password_field(password)
  find(:xpath, '//input[@name="password"]').set(password)
end

#log out
After('@RequiredLogin') do
  visit "https://www.tiket.com"
  account_settings_selector = "span.account-label"
  if has_css?(account_settings_selector)
    find(account_settings_selector).click
    find('div.account-link-list div.account-item-container span').click
    within('div.modal-body') do
      find('div.logout-yes').click
    end
  end
  log("Signed out done")
end