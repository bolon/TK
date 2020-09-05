# Ruby-Capybara Test

## Installation
Recommended to use `rvm` to avoid conflict with your current ruby installation.
I use `ruby-2.4.9` in this project.
Install [bundler](https://bundler.io/)
Install `chromedriver` (or if you want to use other driver change the config in `/support/env.rb`)
Then install project deps : 
```
bundler install 
```
## Running Test
```
cd suites
cucumber features
```
or for specific test suites
```
cd suites
cucumber features/<suite_name.feature>
```

Notes:
For the sake of simplicity, for OTP feature I use email as the receiver.
How I do that? Make the account doesn't verify the phone number.