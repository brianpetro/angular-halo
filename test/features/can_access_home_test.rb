require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Can Access Home Feature Test" do
  scenario "Contains text 'Listing Projects'" do
    visit root_path
    page.must_have_content "Listing projects"
  end
end
