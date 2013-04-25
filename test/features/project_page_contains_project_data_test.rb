require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Project Show Page Contains Project Details Feature Test" do
  scenario "Displays Project Name" do
  	project = Project.create!(details: {name: "aproject"})
    visit project_path(project.id)
    page.must_have_content project.name
  end
end
