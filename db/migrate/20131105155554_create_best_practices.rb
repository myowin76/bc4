class CreateBestPractices < ActiveRecord::Migration
  def change
    create_table :best_practices do |t|
      t.string :name
      t.text :body
      t.references :company, index: true

      t.timestamps
    end
  end
end
