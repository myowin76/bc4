class CreateCommentaries < ActiveRecord::Migration
  def change
    create_table :commentaries do |t|
      t.references :country, index: true
      t.string :title
      t.text :intro
      t.text :body
      t.boolean :showon_admin_dashboard
      t.boolean :showon_wed_dashboard
      t.date :publish_from
      t.date :publish_to

      t.timestamps
    end
  end
end
