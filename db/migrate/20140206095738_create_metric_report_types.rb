class CreateMetricReportTypes < ActiveRecord::Migration
  def change
    create_table :metric_report_types do |t|
      t.references :metric, index: true
      t.references :report_type, index: true
      t.integer :number

      t.timestamps
    end
  end
end
