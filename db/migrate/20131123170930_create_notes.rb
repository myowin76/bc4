class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      # t.integer :report_id
      t.text :note
      t.references :note_source, polymorphic: true
      t.timestamps
    end
    add_index :notes, [:note_source_id, :note_source_type]
  end
end
