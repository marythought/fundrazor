class Donation < ApplicationRecord
  belongs_to :solicitation
  belongs_to :user

  validates :user, presence: true
  validates :solicitation, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
