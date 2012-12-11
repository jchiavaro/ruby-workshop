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

When /I fill in username with (.+) and password with (.+)/ do |user, pass|
  within "#form1" do
    fill_in 'username', :with => user
    fill_in 'password', :with => pass
  end
end

And /I press Register/ do
  click_button("Register")
end

Then /I should see the message (.+) created successfully/ do |username|
  page.should have_content("User #{username} created successfully")
end
