class CreateReportsSubMetrics < ActiveRecord::Migration
  def change
    create_table :reports_sub_metrics do |t|
      t.references :reports_metric, index: true
      t.references :sub_metric, index: true
      t.integer :total_score
      t.text :summary

      t.timestamps
    end
  end
end
