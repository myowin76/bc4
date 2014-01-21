class CreateBctips < ActiveRecord::Migration
  def change
    create_table :bctips do |t|
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
