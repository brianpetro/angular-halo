require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Project Show Has And Displays Entries Feature Test" do
  project = Project.create!(details: {name: "aproject"})
  e1 = Entry.create!(data: {title: "Entry Title Belongs", summary: "Should Be Displayed"}, project_id: project.id)
  e2 = Entry.create!(data: {title: "Do Not Display", summary: "Should Not Be Displayed"})

  scenario "Displays Entries ID" do
    visit project_path(project.id)
    page.must_have_content e1.id
    page.wont_have_content e2.id
  end

  scenario "Displays Entries Title" do
    visit project_path(project.id)
    page.must_have_content "Entry Title Belongs"
    page.wont_have_content "Do Not Display"
  end

  scenario "Displays Entries Summary" do
    visit project_path(project.id)
    page.must_have_content "Should Be Displayed"
    page.wont_have_content "Should Not Be Displayed"
  end
end
