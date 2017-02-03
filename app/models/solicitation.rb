class Solicitation < ApplicationRecord
  belongs_to :campaign
  belongs_to :user
  has_many :donations

  validates :goal, numericality: { greater_than_or_equal_to: 0 }
  include Trackable

  def amount_raised
    if !donations.empty?
      donations.map(&:amount).reduce(&:+)
    else
      0
    end
  end

  def number_of_donations
    donations.size
  end
end
