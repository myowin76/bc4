class AddIconAndLogoToCompany < ActiveRecord::Migration
  def change
  	add_column :companies, :icon_file_name, :string
  	add_column :companies, :icon_content_type, :string
  	add_column :companies, :icon_file_size, :integer
  	add_column :companies, :icon_updated_at, :datetime

		add_column :companies, :logo_file_name, :string
  	add_column :companies, :logo_content_type, :string
  	add_column :companies, :logo_file_size, :integer
  	add_column :companies, :logo_updated_at, :datetime  	
  end
end
