# == Schema Information
#
# Table name: screengrabs
#
#  id                 :integer          not null, primary key
#  caption            :string(255)
#  source_id          :integer
#  source_type        :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Admin::Screengrab < ActiveRecord::Base
	# attr_accessible :caption, :image
  attr_accessible :id, :caption, :source_id, :source_type, :image_file_name, :created_at, :updated_at
  self.table_name = "screengrabs"

	belongs_to :source, polymorphic: true

	has_attached_file :image, 
  	:styles => {:normal => '300x300',:thumbnails => '41x41'},
  	:default_url => "/images/default_:style_screengrab.png",
  	# :url  => "/assets/screengrabs/:style/:basename.:extension",
   #  :path => "/assets/screengrabs/:id/:style/:basename.:extension",
    :url  => "/assets/report_sub_metrics_screengrabs/:style/basename.:extension",
    :path => "/assets/report_sub_metrics_screengrabs/:style/:basename.:extension",

    # :storage => :filesystem,

    :storage => :s3,
    
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :s3_permissions => {
      :default => :public_read,
    },
    :s3_protocol => 'http',
      :s3_options => {
        :server_side_encryption => 'AES256',
        :storage_class => :reduced_redundancy
        # :content_disposition => 'attachment'
      },
    :s3_headers => {"Content-Disposition" => "attachment"},
    :bucket => "bowencraggs"

    validates_attachment_presence :image
    validates_attachment_content_type :image, 
	    :content_type => ['image/jpeg', 'image/pjpeg', 
									   'image/jpg', 'image/png']


end
