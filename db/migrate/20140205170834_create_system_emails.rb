class CreateSystemEmails < ActiveRecord::Migration
  def change
    create_table :system_emails do |t|
      t.string :name
      t.string :from
      t.string :subject
      t.text :body

      t.timestamps
    end
  end
end
