class AddReportIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :report_id, :integer
  end
end
