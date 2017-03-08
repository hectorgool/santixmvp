require "rails_helper"

RSpec.feature "Users can create new tours" do
  scenario "with valid attributes" do
    visit "/"
    click_link "New Tour"
    fill_in "Name", with: "Tour 1"
    fill_in "Description", with: "Description 1"
    click_button "Create Tour"
    expect(page).to have_content "Tour has been created."
  end
end
