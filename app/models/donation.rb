class Donation < ApplicationRecord
  belongs_to :solicitation
  belongs_to :user

  validates :user, presence: true
  validates :solicitation, presence: true
  validates :amount, presence: true
end
