require "rails_helper"

#This is just verifying that the homepage is accessible and that it displays projects.
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end