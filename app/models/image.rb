class Image < ActiveRecord::Base
  belongs_to :page
  has_attached_file :image_location,
                    bucket: ENV['AWS_S3_BUCKET'],
                    styles: { orbit: '800x800>', thumb: '200x200>' }
  validates_attachment_content_type :image_location,
                                    content_type: /\Aimage/
end
