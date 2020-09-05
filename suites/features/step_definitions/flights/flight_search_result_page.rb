Then('I am in flight search result page') do
  #close any modal that show here
  #1st #comp-info-box
  #then set 5times ESC key
  if has_css?('div.comp-info-box')
    find('div.btn-action').click
  end
  expect(page).to have_css('div.wrapper-flight-list')
end

Then('I tick transit with value {int}') do |number_of_transit|
  number_of_transit = number_of_transit > 1 ? 2 : number_of_transit
  page.find(:xpath, "//label[contains(text(), \"#{number_of_transit}\") and contains(text(), \"Transit\")]").click
end

Then('I select random flight') do
  result_size = page.all("div.wrapper-flight-list").count
  random_flight_index = Faker::Number.between(from: 1, to: result_size)
  selector = "div.wrapper-flight-list:nth-child(#{random_flight_index})"
  within(selector) do
    find(:xpath, ".//div[@class='btn-book-now']").click
  end
end
