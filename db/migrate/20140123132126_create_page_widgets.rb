class CreatePageWidgets < ActiveRecord::Migration
  def change
    create_table :page_widgets do |t|
      t.references :page, index: true
      t.references :widget, index: true
      t.integer :position

      t.timestamps
    end
  end
end
