class CreateWebWidgets < ActiveRecord::Migration
  def change
    create_table :web_widgets do |t|
      t.string :name
      t.string :theme
      t.text :body

      t.timestamps
    end
  end
end
