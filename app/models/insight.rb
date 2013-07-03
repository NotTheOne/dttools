class Insight < ActiveRecord::Base
  attr_accessible :name, :insight_matrix
  validates_presence_of :name

  belongs_to :insight_matrix
end
