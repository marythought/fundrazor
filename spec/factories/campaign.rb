FactoryGirl.define do
  factory :campaign do
    name 'Test Campaign'
    goal 5_000
    start_date { Time.now }
    end_date { 1.month.from_now }
    video_link 'https://www.youtube.com/watch?v=SILvPVVAhBo'
  end
end
