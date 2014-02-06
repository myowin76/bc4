class CreateSubMetrics < ActiveRecord::Migration
  def change
    create_table :sub_metrics do |t|
      t.string :name
      t.integer :number
      t.references :metric, index: true
      t.integer :max_score

      t.timestamps
    end
  end
end
