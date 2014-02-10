class CreateReportsMetrics < ActiveRecord::Migration
  def change
    create_table :reports_metrics do |t|
      t.references :report, index: true
      t.references :metric, index: true
      t.integer :total_score
      t.integer :created_by
      t.integer :updated_by
      t.datetime :deleted_at
      t.integer :deleted_by

      t.timestamps
    end
  end
end
