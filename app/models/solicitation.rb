class Solicitation < ApplicationRecord
  belongs_to :campaign
  belongs_to :user

  def donations
    Donation.where("solicitation_id": id)
  end

  def amount_raised
    donations.map { |d| d.amount }.reduce(&:+)
  end

  def amount_needed
    amount_raised ? goal - amount_raised : goal
  end
end
