class CreateUserPeerCompanies < ActiveRecord::Migration
  def change
    create_table :user_peer_companies do |t|
      t.references :user, index: true
      t.references :company, index: true

      t.timestamps
    end
  end
end
