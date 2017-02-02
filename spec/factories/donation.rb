FactoryGirl.define do
  factory :donation do
    user
    solicitation
    amount 10
    comment 'Good luck!'
  end
end
