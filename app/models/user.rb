class User < ApplicationRecord
  has_many :club_members, dependent: :destroy
  has_many :team_members, dependent: :destroy
  has_many :teams, through: :team_members
  has_many :clubs, through: :club_members
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def fullname
    "#{first_name} #{last_name}"
  end
end
