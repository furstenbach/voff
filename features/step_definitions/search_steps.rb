
Given(/^I am on the searchpage$/) do
  visit search_path
end

Then(/^I should see a pin on the map$/) do
  expect(page).to have_selector('#markers', count: 1)
end
