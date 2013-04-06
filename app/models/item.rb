class Item < ActiveRecord::Base
  attr_accessible :completed, :description, :integer, :title, :project_id
  validates :title, :project_id, presence: true

  belongs_to :project
end
