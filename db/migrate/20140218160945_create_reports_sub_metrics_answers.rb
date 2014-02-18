class CreateReportsSubMetricsAnswers < ActiveRecord::Migration
  def change
    create_table :reports_sub_metrics_answers do |t|
      t.references :report, index: true
      t.references :report_types_sub_metrics_questions #to add index
      t.text :answer
    end

    
  end
end