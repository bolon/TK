When('I click {string} label') do |label|
  find('a', text: label, match: :prefer_exact).click()
end

When('I click button {string}') do |label|
  find(:xpath, "//button[contains(., \"#{label}\")]").click()
end
