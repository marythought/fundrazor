require 'rails_helper'

RSpec.describe Donation, type: :model do
  before do
    @donation = build(:donation)
  end

  it 'must be a positive amount' do
    donation = build(:donation, amount: -100)
    expect(donation).to_not be_valid
  end

  it 'belongs to a user (donor)' do
    expect(@donation.user).to be_a_kind_of(User)
  end

  it 'belongs to a solicitation' do
    expect(@donation.solicitation).to be_a_kind_of(Solicitation)
  end
end
