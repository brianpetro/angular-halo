require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Displays Notes In Entries Show Feature Test" do
  scenario "tldr is displayed" do
  	entry = Entry.create!(data: {title: "entry1"})
    n1 = Note.create!(data: {tldr: "display"}, entry_id: entry.id)
  	n2 = Note.create!(data: {tldr: "dont display"})
    visit entry_path(entry.id)
    page.must_have_content "display"
    page.wont_have_content "dont display"
  end
end
