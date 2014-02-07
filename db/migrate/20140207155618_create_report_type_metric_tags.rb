class CreateReportTypeMetricTags < ActiveRecord::Migration
  def change
    create_table :report_type_metric_tags do |t|
      t.references :metric_report_type, index: true
      t.references :report_tag, index: true

      t.timestamps
    end
  end
end
