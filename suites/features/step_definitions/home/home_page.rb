Given('I am in Tiket homepage') do
  visit "https://www.tiket.com"         # direct to site
end

Then('I am redirected to home page and logged in') do
  expect(page).to have_css('span.account-label')
end