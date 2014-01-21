class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :job_title
      t.references :country, index: true
      t.string :website
      t.boolean :bc_tip
      t.boolean :wen
      t.boolean :specials

      t.timestamps
    end
  end
end
