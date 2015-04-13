Feature: Homepage
  Scenario: Check for the SOAPIFF logo
    Given I am on the homepage
    Then I should see the image "soapiff_logo.png"

  Scenario: Check for Facebook link
    Given I am on the homepage
    Then there should be a link to "https://www.facebook.com/soapiff?fref=ts"
