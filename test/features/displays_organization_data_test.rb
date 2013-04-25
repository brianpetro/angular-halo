require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "DisplaysOrganizationData Feature Test" do
  scenario "Displays Organization Name" do
  	organization = Organization.create!(data: {name: "organizationA"})
    visit organization_path(organization.id)
    page.must_have_content organization.name
  end
end
