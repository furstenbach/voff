Then(/^I should see the "([^"]*)" field$/) do |field|
  find_field(field).value
end

