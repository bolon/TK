Then('I am in train search result page') do
  #close any modal that show here
  #1st #comp-info-box
  #then set 5times ESC key
  if has_css?('div.comp-info-box')
    find('div.btn-action').click
  end
  expect(page).to have_css('div.search-result')
end

Then('I select first train') do
  result_size = page.all("div.search-result").count #ignore this for now
  random_train_index = Faker::Number.between(from: 1, to: result_size)
  selector = "div.search-result:nth-child(1)"
    within(selector) do
      find(:xpath, ".//button[contains(@class, 'tiny-button') and not(contains(@class, 'disabled'))]").click
  end
end
