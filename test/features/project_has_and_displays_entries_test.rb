require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Project Show Has And Displays Entries Feature Test" do
  scenario "Project Shows Has and Displays Projects Entries" do
  	project = Project.create!(details: {name: "aproject"})
  	Entry.create!(data: {title: "Entry Title Belongs", summary: "Should Be Displayed"}, project_id: project.id)
  	Entry.create!(data: {title: "Do Not Display", summary: "Should Not Be Displayed"})
    visit project_path(project.id)
    page.must_have_content "Entry Title Belongs"
    page.must_have_content "Should Be Displayed"
    page.wont_have_content "Do Not Display"
    page.wont_have_content "Should Not Be Displayed"
  end
end
