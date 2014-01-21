class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :meta_title
      t.string :meta_desc
      t.string :meta_keyword
      t.string :name
      t.string :page_title
      t.text :page_intro
      t.string :url
      t.text :body
      t.string :ancestry, index: true
      t.integer :position

      t.timestamps
    end
  end
end
