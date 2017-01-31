class Campaign < ApplicationRecord
  has_many :users, through: :solicitations
  has_many :solicitations

  validates :name, presence: true

  def self.active
    Campaign.where('start_date <= ? AND end_date >= ?', Time.now, Time.now)
  end
end
