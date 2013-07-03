class CreateInsightRelationships < ActiveRecord::Migration
  def change
    create_table :insight_relationships do |t|
      t.integer :source_id
      t.integer :target_id
      t.integer :insight_matrix_id
      t.integer :value

      t.timestamps
    end
  end
end
