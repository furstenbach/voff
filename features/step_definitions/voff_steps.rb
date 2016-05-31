Given(/^I am on the "([^"]*)"$/) do |page|
  case page
  when "Home page" then
     visit root_path
   end
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_text(text)
end
