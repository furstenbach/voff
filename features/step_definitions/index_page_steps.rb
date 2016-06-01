Then(/^I should see the "([^"]*)" field$/) do |field|
  find_field(field).value
end

Then(/^I should see the "([^"]*)" button$/) do |button|
  find_button(button).value
end
