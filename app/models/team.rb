class Team < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :user_teams, dependent: :destroy
  has_many :users, through: :user_teams
end
