class AddCompanyNameToBestPractices < ActiveRecord::Migration
  def change
    add_column :best_practices, :company_name, :string
  end
end
