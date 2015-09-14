require "test_helper"

feature "Deleting an Article" do
  scenario "article is deleted with a click" do
    
    Article.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
    visit articles_path
    puts page.html
    first(:a, '.delete').click

    page.wont_have_content "Becoming a Code Fellow"
  end
end
