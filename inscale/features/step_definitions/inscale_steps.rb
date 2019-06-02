Given(/^the user opens (?:the )?"(.*?)"(?: page)?$/) do |page|
  Nav.to(page)
end

Given(/^the user search for "(.*?)"$/) do |query|
  # Get the input element
  searchbox = browser.find(:input => {:name => "q"})
  # Make sure the input field is empty
  searchbox.clear rescue log.debug "Could not clear searchbox"
  # Fill in the query
  searchbox.send_keys(query)
  # Press enter to submit the search
  searchbox.send_keys(:enter)
end

Then(/^first result should be "(.*?)"$/) do |string|
  # Search for the text on the page
  browser.wait(:xpath => "//h3[contains(@class, 'LC20lb') and contains(text(),\"#{string}\")]")
end

Then(/^user should be able to access the site$/) do
  # Search for the text on the page
  browser.wait(:xpath => "//img[contains(@class, 'navbar-brand__logo')]")
end