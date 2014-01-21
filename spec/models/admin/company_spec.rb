# == Schema Information
#
# Table name: companies
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  url               :string(255)
#  renew_date        :date
#  company_type_id   :integer
#  company_status_id :integer
#  sector_id         :integer
#  country_id        :integer
#  reports_count     :integer
#  users_count       :integer
#  created_at        :datetime
#  updated_at        :datetime
#  icon_file_name    :string(255)
#  icon_content_type :string(255)
#  icon_file_size    :integer
#  icon_updated_at   :datetime
#  logo_file_name    :string(255)
#  logo_content_type :string(255)
#  logo_file_size    :integer
#  logo_updated_at   :datetime
#  subscription_id   :integer
#

require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')
# require '../../../spec_helper'

describe Admin::Company do
  pending "add some examples to (or delete) #{__FILE__}"

  # before { login }
	it "should create a new instance given valid attributes" do
    Admin::Company.create!(:name => "Test IBM Company"
    	# :user => FactoryGirl.create(:user),
    )
  end  
end
