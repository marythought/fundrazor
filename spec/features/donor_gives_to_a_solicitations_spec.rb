require 'rails_helper'

RSpec.feature "DonorGivesToASolicitations", type: :feature do
  scenario "user can donate to a solicitation when signed in"
  scenario "user can't give to a solicitation if not signed in"
  scenario "new donation appears on solicitation show page"
  scenario "new donation amount is added to amount raised"
  scenario "if donation fulfills goal, solicitation text changes to reflect this"
end
