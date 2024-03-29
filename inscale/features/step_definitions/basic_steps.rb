################################################################################
# Copyright 2019 spriteCloud B.V. All rights reserved.
# Generated by LapisLazuli, version 2.1.4
# Author: "spriteCloud B.V." <info@spritecloud.com>

# interactions_steps.rb is used to interact with elements on the page.
# Quite advances piece of regex. Goto http://rubular.com/ for practise
# Whatever is put between parenthesis is captured as a variable unless you start with `?:`
# /(?: text)?/ means: ` text` is optional and do not capture it as a variable
# /(.*?)/ means: Any amount of any character, but don't be "greedy"
# "greedy" means, do not take characters that match the rest of the regex.
Given(/^the user navigates to (?:the )?"(.*?)"(?: page)?$/) do |page|
  Nav.to(page)
end

# An example of interacting with some elements
Given(/^the user searches for "(.*?)"$/) do |query|
  # Get the input element
  searchbox = browser.find(:text_field => {:name => "s"})
  # Make sure the input field is empty
  searchbox.clear rescue log.debug "Could not clear searchbox"
  # Fill in the query
  searchbox.send_keys(query)
  # Press enter to submit the search
  searchbox.send_keys(:enter)
end

Then(/^text "([^"]*)" should display somewhere on the page$/) do |string|
  # Search for the text on the page
  browser.wait(:xpath => "//*[contains(text(),\"#{string}\")]")
end

When(/^the user clicks on link "(.*?)"$/) do |url|
  # Search for the element that includes the expected text
  browser.wait(
    :like => {
      :element => :a,
      :attribute => :href,
      :include => url
    }
  ).click
end

When(/^the user clicks on the spritecloud logo$/) do
  # Search for the logo
  logo = browser.find(
    :like => [:img, :id, 'logo'],
    :message => 'Unable to find the logo on this page.'
  )
  # And click the logo
  logo.click
end

Then(/^the user should be on page "(.*?)"$/) do |page|
  url = Nav.set_url page
  Nav.wait_for_url url
end

Then /^the text "(.*?)" should display on the blog page$/ do |expected_text|
  # Many things wrong here, can you fix it?
  header = browser.find(:like => [:h2, :id, 'entry_title'])
  unless heeder.text.include? expected_text
    error "Unable to find text `#{expected_text}`"
  end
end
