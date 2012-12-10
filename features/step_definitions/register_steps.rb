Given /I am on the home page/ do
  visit("/")
end

When /I follow register user/ do
  click_button("new_user")
end

Then /I should be on the register user page/ do
  assert_contain("register new user")
end

When /I fill in Username and Password/ do
  fill_in("email", with: "newuser@ruby.org")
  fill_in("password", with: "top_secret")
end

And /I press register/ do
  click_button("register")
end

Then /I should see/ do
  assert_contain("User created successfully")
end
