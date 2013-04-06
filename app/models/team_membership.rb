class TeamMembership < ActiveRecord::Base
  attr_accessible :team, :user
  
  belongs_to :team
  belongs_to :user
end
