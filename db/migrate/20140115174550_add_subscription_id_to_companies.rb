class AddSubscriptionIdToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :subscription_id, :integer, index: true
  end
end
