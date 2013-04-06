class Team < ActiveRecord::Base
  attr_accessible :name, :user_ids
  validates :name, presence: :true 

  has_many :team_memberships
  has_many :users, through: :team_memberships
  has_many :projects, dependent: :destroy


end
