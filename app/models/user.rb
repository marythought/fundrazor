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
end
