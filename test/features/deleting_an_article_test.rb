require "test_helper"

feature "Deleting an Article" do
  scenario "article is deleted with a click" do
    
    Article.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
    visit articles_path
    find('body').must_have_content "Means striving for excellence."
    click_on "Destroy"

    page.wont_have_content "Becoming a Code Fellow"
  end
end
