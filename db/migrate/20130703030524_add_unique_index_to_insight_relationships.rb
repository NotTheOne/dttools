class AddUniqueIndexToInsightRelationships < ActiveRecord::Migration
  def up

    add_index :insight_relationships, [:source_id, :target_id], unique: true
  end
  def down
    remove_index :insight_relationships, [:source_id, :target_id], unique: true
  end
end
