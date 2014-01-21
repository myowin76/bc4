class CreateCompanyStatuses < ActiveRecord::Migration
  def change
    create_table :company_statuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
