class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.date :publish_date
      t.boolean :ft_index
      t.boolean :in_result_table
      t.boolean :can_compare
      t.integer :reports_count

      t.timestamps
    end
  end
end
