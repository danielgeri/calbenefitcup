class Image < ActiveRecord::Base
  belongs_to :page
  has_attached_file :image_location, styles: { orbit: '800x800>' }
  validates_attachment_content_type :image_location, content_type: /\Aimage/
end
