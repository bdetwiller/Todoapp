class Project < ActiveRecord::Base
  attr_accessible :description, :integer, :title, :team_id
  validates :title, :team_id, presence: true

  has_many :items, dependent: :destroy
  belongs_to :team
end
