#users = [User.new({username: "scott"}),
#  User.new({username: "chris"}),
#  User.new({username: "casey"})]

users = [{username: "scott"},
  {username: "chris"},
  {username: "casey"}]

Given /I am on the home page/ do
  visit("/")
  page.should have_content("home site")
end

And /the following users exist:/ do |users|
  User.delete_all
  users.hashes.each do |user|
    User.create!(user)
  end
end

When /I click on view users/ do
  click_link("View users")
end

Then /I should see the list with the following users:/  do |table|
  table.raw.each do |user|
    page.should have_content(user.first)
  end
end
