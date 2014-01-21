class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :name
      t.references :project, index: true
      t.references :company, index: true
      t.references :report_type, index: true
      t.date :publish_date

      t.boolean :approved
      t.references :user

      t.timestamps
    end
  end
end
