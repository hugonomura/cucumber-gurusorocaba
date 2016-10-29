When(/^I click on "([^"]*)" link$/) do | value |
  @browser.link(text: value).when_present.click
end

Then(/^I should see the page on "([^"]*)" language$/) do | value |
  @browser.div(id: 'content').wait_until_present
  if value == 'Pt-br'
    raise 'Text not found ' unless @browser.text.include? 'sobre'
  else
    raise 'Text not found ' unless @browser.text.include? 'about'
  end
end
