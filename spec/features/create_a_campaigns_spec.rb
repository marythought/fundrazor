require 'rails_helper'

RSpec.feature "CreateACampaigns", type: :feature do
  before do
    visit "/"
  end

  scenario "Visitor can create a new campaign" do
    click_link "New Campaign"
    fill_in "Name", with: 'Example Campaign'
    fill_in "Goal", with: 5_000
    fill_in "Video link", with: 'https://www.youtube.com/watch?v=SILvPVVAhBo&t=1s'
    click_button 'Create Campaign'
    expect(page).to have_content('Campaign was successfully created.')
  end

  scenario "visitors can view a campaign"
  scenario "visitors can't view expired campaigns"
end
