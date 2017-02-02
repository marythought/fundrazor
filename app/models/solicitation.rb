class Solicitation < ApplicationRecord
  belongs_to :campaign
  belongs_to :user
  has_many :donations

  # validates goal must be present and greater than 0

  def amount_raised
    if !donations.empty?
      donations.map(&:amount).reduce(&:+)
    else
      0
    end
  end

  def number_of_donations
    donations.count
  end

  def amount_needed
    goal - amount_raised
  end
end
