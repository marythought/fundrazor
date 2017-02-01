class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # when user is a donor:
  has_many :donations

  # when user is a fundraiser:
  has_many :campaigns, through: :solicitations
  has_many :solicitations

  def donor?
    !Donation.where(user_id: id).empty?
  end

  def fundraiser?
    !Solicitation.where(user_id: id).empty?
  end

  def all_funds_raised
    solicitations.map(&:donations).map(&:amount).reduce(&:+)
  end

  def funds_donated_by_campaign(campaign)
    donations.filter { |d| d.campaign_id == campaign.id }.map(&:amount).reduce(&:+)
  end
end
