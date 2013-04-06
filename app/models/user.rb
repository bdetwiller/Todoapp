class User < ActiveRecord::Base
  attr_accessible :name, :team_ids

  has_many :team_membership
  has_many :teams, through: :team_membership
end
