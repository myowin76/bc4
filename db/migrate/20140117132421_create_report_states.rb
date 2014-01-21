class CreateReportStates < ActiveRecord::Migration
  def change
    create_table :report_states do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
