require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_content page, "Garrett Sand"
    refute_content page, "Goobye All!"
  end
end
