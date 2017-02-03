class Campaign < ApplicationRecord
  has_many :users, through: :solicitations
  has_many :solicitations

  validates :name, presence: true
  validates :goal, numericality: { greater_than_or_equal_to: 0 }

  include Trackable

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

  def fundraisers_by_amount_raised
    solicitations.map do |s|
      [s.amount_raised, s.user.email]
    end.sort.reverse
  end

  def fundraisers_by_number_of_donations
    solicitations.map do |s|
      [s.number_of_donations, s.user.email]
    end.sort.reverse
  end

  def amount_raised
    if !solicitations.empty?
      solicitations.map(&:amount_raised).reduce(&:+)
    else
      0
    end
  end

end
