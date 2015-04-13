Given /^I am on the homepage$/ do
  visit('/')
end

Then /^I should see the image "(.+)"$/ do |image|
  expect(page).to have_xpath("//img[contains(@src, \"#{image}\")]")
end

Then /^there should be a link to "(.+)"$/ do |url|
  expect(page).to have_xpath("//a[contains(@href, \"#{url}\")]")
end
