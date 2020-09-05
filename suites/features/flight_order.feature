@RequiredLogin
Feature: Flight Product
  As a user
  I should be able to sign in using email
  And find domestic round-trip flight and transit

Scenario: As a user I can book round-trip flight
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
  When I click "Pesawat" label
  Then I am in flight search page
  And I tick "Pulang-Pergi" radio button
  And I set "Jakarta" as origin
  And I set "Surabaya" as destination
  And I set departure date as "20"
  And I set arrival date as "25"
  And I use default value for the rest
  When I click button "CARI PENERBANGAN"
  Then I am in flight search result page
  And I tick transit with value 1
  Then I select random flight
  And I tick transit with value 1
  When I select random flight
  Then I am in flight details page
  And I select title as "Tuan"
  And I fill-in name as "My Custom Name"
  And I select citizenship as "Indonesia"
  When I click button "LANJUTKAN KE PEMBAYARAN"
  And I click button "YA, LANJUTKAN"
  Then I am in payment options page
  Then I select payment method using virtual account "BCA"
  When I click button "Lanjutkan"
  Then I am in payment summary page
