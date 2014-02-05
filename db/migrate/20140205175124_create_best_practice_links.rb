class CreateBestPracticeLinks < ActiveRecord::Migration
  def change
    create_table :best_practice_links do |t|
      t.references :best_practice, index: true
      t.string :caption
      t.datetime :created_by
      t.datetime :updated_by

      t.timestamps
    end
  end
end
