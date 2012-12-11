Given /I am on the home page/ do
  visit("/")
  page.should have_content("home site")
end

When /I follow register user/ do
  click_link("new user")
end

Then /I should be on the register user page/ do
  page.should have_content("register new user")
end

When /^I fill in "username" with "newuser@ruby\.org" and "password" with "top_secret"$/ do
  within "#form1" do
    fill_in 'username', :with => 'newuser@ruby.org'
    fill_in 'password', :with => 'top_secret'
  end
end

And /I press Register/ do
  click_button("Register")
end

Then /I should see/ do
  page.should have_content("User created successfully")
end
