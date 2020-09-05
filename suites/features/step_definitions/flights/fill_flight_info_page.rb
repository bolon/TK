Then('I am in flight details page') do
  Capybara.using_wait_time(30) do 
    expect(page).to have_css('div.booking')
  end
end

Then('I select title as {string}') do |person_title|
  within("div.wrapper-passenger-details") do
    find(:xpath, ".//div[contains(@class, 'title')]/i").click
    find(:xpath, ".//div[text()=\"#{person_title}\"]").click
  end
end

Then('I fill-in name as {string}') do |person_name|
  within("div.wrapper-passenger-details") do
    find(:xpath, ".//div[contains(@class, 'list-autocomplete')]/input").set(person_name)
  end
end

Then('I select citizenship as {string}') do |citizenship|
  within("div.wrapper-passenger-details") do
    find(:xpath, ".//div[contains(@class, 'country')]//input[@class='input-flight-dropdown-searchbox']").click
    find(:xpath, ".//div[contains(@class, 'country')]//li[1]").click
  end
end
