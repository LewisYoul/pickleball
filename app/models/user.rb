class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :user_teams, dependent: :destroy
  has_many :teams, through: :user_teams
  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
