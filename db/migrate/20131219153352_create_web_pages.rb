class CreateWebPages < ActiveRecord::Migration
  def change
    create_table :web_pages do |t|
      t.string :meta_title
      t.string :meta_desc
      t.string :meta_keyword
      t.string :name
      t.string :page_title
      t.text :page_intro
      t.string :url, index: true
      t.text :body
      t.string :ancestry, index: true
      t.integer :position
      t.boolean :published
      t.boolean :hide_on_nav
      t.string :content_type
      
      t.timestamps
    end


  end
end
