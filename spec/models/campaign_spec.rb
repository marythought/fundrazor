require 'rails_helper'

RSpec.describe Campaign, type: :model do
  before do
    @campaign = build(:campaign)
  end

  it 'is valid with valid attributes' do
    expect(@campaign).to be_valid
  end

  it 'is not valid without a positive goal' do
    campaign = build(:campaign, goal: -100)
    expect(campaign).to_not be_valid
  end

  it 'has zero or more associated solicitations' do
    expect(@campaign.solicitations.length).to eq(0)
  end

  it 'can report progress to goal' do
    expect(@campaign.amount_needed).to eq(@campaign.goal)
  end
end
