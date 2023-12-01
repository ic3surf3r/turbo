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

  def coach_or_manager?(team)
    club = team.club
    club_membership = self.club_members.find_by(club: club)
    team_membership = self.team_members.find_by(team: team)
    if club_membership
      return true if club_membership.is_manager

      if team_membership
        return team_membership.is_coach
      end
    else
      return false
    end
    return false
  end

  def manager?(club)
    club_membership = self.club_members.find_by(club: club)
    if club_membership
      return club_membership.is_manager
    else
      return false
    end
  end
end
