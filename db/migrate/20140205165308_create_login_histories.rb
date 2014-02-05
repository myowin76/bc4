class CreateLoginHistories < ActiveRecord::Migration
  def change
    create_table :login_histories do |t|
      t.references :user, index: true
      t.datetime :sign_in_at
      t.string :sign_in_ip

      t.timestamps
    end
  end
end
