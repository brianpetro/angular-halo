require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Organization Has Projects Feature Test" do
  scenario "Only Display Project If It Belongs To Organization" do
  	org = Organization.create!()
  	project = Project.create!(details: {name: "aproject"}, organization_id: org.id)
  	project2 = Project.create!(details: {name: "bproject"})
    visit organization_path(org.id)
    page.must_have_content "aproject"
    page.wont_have_content "bproject"
  end
end
