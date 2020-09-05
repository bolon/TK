Then('I am in train search page') do
  expect(page).to have_css('div.home-train')
end

Then('I set {string} as train origin') do |origin|
  fill_train_field("origin", origin)
end

Then('I set {string} as train destination') do |destination|
  fill_train_field("destination", destination)
end

def fill_train_field(type, value)
  index = 0
  case type
  when "origin"
    index = 1
  when "destination"
    index = 2
  end
  selector = "//input[contains(@class,'input-airport') and @tabindex='#{index}']"
  find(:xpath, selector).set(value)
  find(:xpath, "//li[@class='city']").click
end