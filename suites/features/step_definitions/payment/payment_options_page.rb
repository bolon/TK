Then('I am in payment options page') do
  Capybara.using_wait_time(30) do 
    expect(page).to have_css('div.payment-methods-list')
  end
end

Then('I select payment method using virtual account {string}') do |bank_name|
  within("div.payment-methods-list:nth-child(4)") do
    find(:xpath, ".//span[contains(text(), \"#{bank_name}\")]").click
  end
end

Then('I am in payment summary page') do
  expect(page).to have_css('div.payment-confirm')
end