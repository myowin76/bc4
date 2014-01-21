class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.integer :number
      t.integer :score
      t.references :report

      t.timestamps
    end
  end
end
