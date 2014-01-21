class CreateScreengrabs < ActiveRecord::Migration
  def change
    create_table :screengrabs do |t|
      t.string :caption
      # t.integer :source_id, index: true
      # t.string :source_type, index: true
      t.belongs_to :source, polymorphic: true

      t.timestamps
    end
    add_index :screengrabs, [:source_id, :source_type]
  end
end
