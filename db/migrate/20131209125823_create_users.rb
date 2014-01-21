class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :job_title
      t.boolean :super_user
      t.boolean :approver
      t.boolean :dashboard_alerts
      t.boolean :active
      t.boolean :deleted
      t.references :company, index: true

      t.timestamps
    end
  end
end
