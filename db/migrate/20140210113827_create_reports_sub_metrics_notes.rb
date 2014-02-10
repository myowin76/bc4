class CreateReportsSubMetricsNotes < ActiveRecord::Migration
  def change
    create_table :reports_sub_metrics_notes do |t|
      t.references :reports_sub_metric, index: true
      t.text :note

      t.timestamps
    end
  end
end
