class Insight < ActiveRecord::Base
  attr_accessible :name, :insight_matrix
  validates_presence_of :name

  belongs_to :insight_matrix
  has_many :source_insight_relationships,
  	class_name: 'InsightRelationship',
  	foreign_key: 'source_id',
  	dependent: :destroy

  has_many :target_insight_relationships,
  	class_name: 'InsightRelationship',
  	foreign_key: 'target_id',
  	dependent: :destroy
end
