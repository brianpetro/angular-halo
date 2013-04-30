require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Organization Has Projects Feature Test" do
	org = Organization.create!()
	project = Project.create!(name: "aproject", organization_id: org.id)
	project2 = Project.create!(name: "bproject")
  scenario "displays name", js: true do
		visit organization_path(org.id)
    page.must_have_content project.name
    page.wont_have_content project2.name
  end
end
