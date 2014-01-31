# == Schema Information
#
# Table name: user_peer_companies
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  company_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class UserPeerCompany < ActiveRecord::Base
  belongs_to :user,
		:class_name => "User"

end
