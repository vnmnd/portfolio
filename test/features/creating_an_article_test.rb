require "test_helper"

feature "Creating an Article" do
  scenario "submit form data to create a new article" do
    
    visit new_article_path
    fill_in "Title", with: articles(:cr).title
    fill_in "Body", with: articles(:cr).body

    click_on "Create Article"

    page.text.must_include "Article was successfully created"
    page.text.must_include articles(:cr).title
  end
end
