Given(/^following users exists$/) do |table|
  table.hashes.each do |user|
    create(:user, name: user[:name], email: user[:email], password: user[:password])
  end
end

Given(/^I am on the "([^"]*)"$/) do |page|
  case page
   when "home page" then
     visit root_path
  end
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end
