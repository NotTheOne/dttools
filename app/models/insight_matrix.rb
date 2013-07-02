class InsightMatrix < ActiveRecord::Base
  attr_accessible :name, :insight_relationships_attributes

  has_many :insights
  has_many :insight_relationships
  accepts_nested_attributes_for :insight_relationships
end
