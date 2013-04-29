require "minitest_helper"

# To be handled correctly by Capybara this spec must end with "Feature Test"
feature "Displays Notes In Entries Show Feature Test" do
	entry = Entry.create!(data: {title: "entry1"})
  n1 = Note.create!(tldr: "display", concern: "display_concern", author: "display_brian", entry_id: entry.id)
	n2 = Note.create!(tldr: "dont_display", concern: "no_concern", author: "no_brian")

  scenario "tldr is displayed", js: true do
    visit entry_path(entry.id)
    page.must_have_content n1.tldr
    page.wont_have_content n2.tldr
  end

  scenario "concern is displayed", js: true do
    visit entry_path(entry.id)
    page.must_have_content n1.concern
    page.wont_have_content n2.concern
  end

  scenario "author is displayed", js: true do
    visit entry_path(entry.id)
    page.must_have_content n1.author
    page.wont_have_content n2.author
  end
end
