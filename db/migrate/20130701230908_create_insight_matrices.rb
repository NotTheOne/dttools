class CreateInsightMatrices < ActiveRecord::Migration
  def change
    create_table :insight_matrices do |t|
      t.string :name

      t.timestamps
    end
  end
end
