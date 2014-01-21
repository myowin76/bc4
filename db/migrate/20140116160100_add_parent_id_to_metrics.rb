class AddParentIdToMetrics < ActiveRecord::Migration
  def change
    add_column :metrics, :parent_id, :integer
  end
end
