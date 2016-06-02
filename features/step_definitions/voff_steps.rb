Given(/^following users exists$/) do |table|
  table.hashes.each do |user|
    create(:user, name: user[:name], email: user[:email], password: user[:password])
  end
end


Given(/^I am on the "([^"]*)"$/) do |page|
  case page
   when "home page" then
     visit root_path
   when "login page" then
     visit new_user_session_path
   when "sign up page" then
     visit new_user_registration_path
   when "Forgot password page" then
      visit new_user_password_path
   when "payment page" then
      visit new_charge_path
  end
end

Then(/^I should be on the "([^"]*)"$/) do |page|
  case page
  when "home page" then
     expect(current_path).to eq root_path
  when "sign up page" then
     expect(current_path).to eq new_user_registration_path
  end
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end


Then(/^I should see "([^"]*)" link$/) do |link|
  expect(page).to have_link(link)
end

Then(/^I should see the"([^"]*)" button$/) do |button|
  expect(page).to have_button(button)
end

Given /^I press the "([^\"]*)" button$/ do |button|
#  page.find('stripe-button-el').click
click_button button
end

Then /^show me the page$/ do
  save_and_open_page
end

Then(/^I click on the "([^"]*)" link$/) do |link|
  click_on(link)
end

Given(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
   fill_in(field, with: value)
end

Given(/^I click on the "([^"]*)" button$/) do |button|
  click_link_or_button button
end

Then(/^I should see a "([^"]*)" checkbox$/) do |checkbox|
    find("input[type='checkbox']")
end
