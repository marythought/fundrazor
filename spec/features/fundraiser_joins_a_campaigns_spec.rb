require 'rails_helper'

RSpec.feature "FundraiserJoinsACampaigns", type: :feature do
  scenario "user must be logged in to join a campaign"
  scenario "new solicitation page is linked from campaign page"
  scenario "if someone donates to solicitation page, fundraiser appears on leaderboard on campaign page"
  scenario "if more than 10 fundraisers, only top 10 appear on amount leaderboard"
  scenario "if more than 10 fundraisers, only top 10 appear on number of donations leaderboard"
end
