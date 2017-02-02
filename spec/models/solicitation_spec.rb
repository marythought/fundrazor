require 'rails_helper'

RSpec.describe Solicitation, type: :model do
  before do
    @solicitation = build(:solicitation)
  end

  it 'is valid with valid attributes' do
    expect(@solicitation).to be_valid
  end

  it 'is not valid without a positive goal' do
    solicitation = build(:solicitation, goal: -100)
    expect(solicitation).to_not be_valid
  end

  it 'belongs to a campaign' do
    expect(@solicitation.campaign).to be_a_kind_of(Campaign)
  end

  it 'belongs to a fundraiser' do
    expect(@solicitation.user).to be_a_kind_of(User)
  end

  it 'has zero or more associated donations' do
    expect(@solicitation.donations.length).to eq(0)
  end

  it 'can report progress to goal' do
    expect(@solicitation.amount_needed).to eq(@solicitation.goal)
  end
end
