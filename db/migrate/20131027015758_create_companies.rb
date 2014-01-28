class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :url
      t.date :renew_date
      t.references :company_type, index: true
      t.references :company_status, index: true
      t.references :sector, index: true
      t.references :country, index: true
      t.integer :reports_count
      t.integer :users_count

      t.boolean :active
      # t.boolean :deleted
      # t.integer :updated_by
      # t.integer :deleted_by

      t.timestamps
    end
  end
end
