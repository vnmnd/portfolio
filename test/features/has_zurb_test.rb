require "test_helper"

feature "Has Zurb" do
  scenario "Check for Zurb Foundations" do
    visit root_path
    page.body.must_include "columns"
  end
end
