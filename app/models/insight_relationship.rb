class InsightRelationship < ActiveRecord::Base
  attr_accessible :source, :target, :value, :insight_relationship,
    :source_id, :target_id

  belongs_to :source, class_name: "Insight", foreign_key: "source_id"
  belongs_to :target, class_name: "Insight", foreign_key: "target_id"
  belongs_to :insight_matrix, inverse_of: :insight_relationships


  def label
    [source.name, target.name].join(" ")
  end
end
