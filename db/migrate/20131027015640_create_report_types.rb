class CreateReportTypes < ActiveRecord::Migration
  def change
    create_table :report_types do |t|
      t.string :name
      t.boolean :public
      t.text :notes
      t.boolean :exe_summary
      t.boolean :recommendation
      t.boolean :best_practice
      t.boolean :supplementary

      t.timestamps
    end
  end
end
