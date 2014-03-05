class CreateReportsSubMetricsTags < ActiveRecord::Migration
  def change
    create_table :reports_sub_metrics_tags do |t|
      t.references :reports_sub_metric, index: true
      t.references :report_tag, index: true

      t.timestamps
    end
  end
end
