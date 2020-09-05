Then('I am in flight search page') do
  expect(page).to have_css('div.flight-content')
end

Then('I tick {string} radio button') do |flight_type|
  within('div.form-flight') do
    page.find(:xpath,"//label[text()='#{flight_type}']").click
  end
end

Then('I set {string} as origin') do |origin|
  fill_airport_field("origin", origin)
end

Then('I set {string} as destination') do |destination|
  fill_airport_field("destination", destination)
end

Then('I set departure date as {string}') do |arrival_date|
  selector = "//div[@data-visible='true']//div[contains(@class, 'widget-date-picker-day') and text()=#{arrival_date}]"
  first(:xpath, "//div[@data-visible='true']//div[contains(@class, 'widget-date-picker-day') and text()=#{arrival_date}]").click
end

Then('I set arrival date as {string}') do |departure_date|
  sleep(1)
  first(:xpath, "//div[@data-visible='true']//div[contains(@class, 'widget-date-picker-day') and text()=#{departure_date}]").click
end

And('I use default value for the rest') do
  if has_css?('div.btn-close')
    find('div.btn-close').click
  end
end

def fill_airport_field(type, value)
  index = 0
  case type
  when "origin"
    index = 1
  when "destination"
    index = 2
  end
  selector = "//input[contains(@class,'input-airport') and @tabindex='#{index}']"
  find(:xpath, selector).set(value).native.send_keys(:return)
end