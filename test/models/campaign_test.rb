require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  test "name can't be blank" do
    campaign = Campaign.new
    assert_not campaign.save
  end
end
