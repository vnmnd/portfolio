require "test_helper"

feature "Visiting the Article Index" do
  scenario "with existing posts" do
    Article.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
    
    visit articles_path

    page.text.must_include "Becoming a Code Fellow"
  end
end
