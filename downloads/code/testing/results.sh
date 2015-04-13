Feature: Homepage

  Scenario: Check for the SOAPIFF logo             # features/home.feature:2
    Given I am on the homepage                     # features/step_definitions/home_steps.rb:1
    Then I should see the image "soapiff_logo.png" # features/step_definitions/home_steps.rb:5

  Scenario: Check for Facebook link                                           # features/home.feature:6
    Given I am on the homepage                                                # features/step_definitions/home_steps.rb:1
    Then there should be a link to "https://www.facebook.com/soapiff?fref=ts" # features/step_definitions/home_steps.rb:9

2 scenarios (2 passed)
4 steps (4 passed)
0m7.755s
