Then('I am in train details page') do
  Capybara.using_wait_time(30) do 
    expect(page).to have_css('div.booking')
  end
end

Then('I select title as {string} for train passenger') do |person_title|
  within("div.passenger-info-box  ") do
    find(:xpath, ".//div[contains(@class, 'salutation')]").click
    find(:xpath, ".//li[text()=\"#{person_title}\"]").click
  end
end

Then('I fill-in name as {string} for train passenger') do |person_name|
  within("div.passenger-info-box") do
    find(:xpath, ".//div[contains(@class, 'name')]/input").set(person_name)
  end
end

Then('I fill-in identifier as {string} for train passenger') do |id_number|
  within("div.passenger-info-box") do
    find(:xpath, ".//div[contains(@class, 'empty')]/input").set(id_number)
  end
end
