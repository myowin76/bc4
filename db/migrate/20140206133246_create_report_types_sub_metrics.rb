class CreateReportTypesSubMetrics < ActiveRecord::Migration
  def change
    create_table :report_types_sub_metrics do |t|
      t.references :metric_report_type, index: true
      t.references :sub_metric, index: true
      t.integer :number

      t.timestamps
    end
  end
end
