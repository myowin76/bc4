class AddReportStateIdToReports < ActiveRecord::Migration
  def change
    add_column :reports, :report_state_id, :integer
  end
end
