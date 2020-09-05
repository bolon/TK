@RequiredLogin
Feature: Train Product
  As a user
  I should be able to sign in using email
  And find train

Scenario: As a user I can book one-way train
  Given I am in Tiket homepage
  When I click "Login" label
  Then I am in login page
  And fill-in valid email
  When I click button "Lanjutkan"
  Then I see password field
  And I fill-in valid password
  Then I click button "Log in"
  When I see otp validation
  Then I get the otp and fill the field
  Then I am redirected to home page and logged in
  When I click "Kereta Api" label
  Then I am in train search page
  And I set "Jakarta" as train origin
  And I set "Surabaya" as train destination
  And I set departure date as "11"
  And I use default value for the rest
  When I click button "Cari Kereta Api"
  Then I am in train search result page
  Then I select first train
  Then I am in train details page
  And I select title as "Tuan" for train passenger
  And I fill-in name as "My Custom Name" for train passenger
  And I fill-in identifier as "17072020" for train passenger
  When I click button "Lanjutkan ke Pembayaran"
  And I click button "YA, LANJUTKAN"
  Then I am in payment options page
  Then I select payment method using virtual account "BCA"
  When I click button "Lanjutkan"
  Then I am in payment summary page
