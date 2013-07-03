class AddInsightMatrixIdToInsights < ActiveRecord::Migration
  def up
    add_column :insights, :insight_matrix_id, :integer
  end
  def down
    remove_column :insights, :insight_matrix_id
  end
end
