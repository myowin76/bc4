class CreateReportTypesSubMetricsQuestions < ActiveRecord::Migration
  def change
    create_table :report_types_sub_metrics_questions do |t|
      t.references :report_types_sub_metric
      t.references :question, index: true
      t.integer :order

      t.timestamps
    end

    # TO DO  /// ADD INDEX - IT WAS TOO LONG
    # , index: true
  end
end
