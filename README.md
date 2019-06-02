# This is for INSCALE technical exam
# Automation is done using an existing framework from: http://www.testautomation.info/Welcome
# Language: RUBY
# Test scenarios are in inscale/features/inscale.feature
# Step definitions are in inscale/features/inscale_steps.rb
# 
# Scenarios can be tested using below:
# To Ensure that when I search keyword “topdanmark” at google, the first record that is displayed to me is not other than “topdanmark”
### cucumber -t @scenario_1
# To ensure that I can access https://www.topdanmark.dk from various browser (i.e. IE, Chrome, etc)
### cucumber -t @scenario_2 BROWSER=chrome
### cucumber -t @scenrios_2 BROWSER=firefox
# Only chrome and firefox are supported by the current framework used
