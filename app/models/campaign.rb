class Campaign < ApplicationRecord
  has_many :users, through: :solicitations
  has_many :solicitations

  validates :name, presence: true

  def self.active
    Campaign.where('start_date <= ? AND end_date >= ?', Time.now, Time.now)
  end

  def youtube_id
    video_link[-11..-1] if video_link
  end

  def youtube_url
    "https://www.youtube.com/embed/#{youtube_id}"
  end

  def fundraisers
    users.map(&:email)
  end

  def amount_raised
    users.map
  end

  def amount_needed; end
end
