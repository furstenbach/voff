
Given(/^I am on the searchpage$/) do
  visit search_path
end

Then(/^I should see a pin on the map$/) do
  expect(page).to have_selector('#markers', count: 1)
end

Given(/^that following dog sitters exist in the system$/) do |table|
  table.hashes.each do |user|
    User.create(name: user[:name], address1: user[:address1], zip: user[:zip],
    city: user[:city])
  end
end

Then(/^I should see two pins on the map$/) do
  expect(page).to have_selector('#markers', count: 2)
end
