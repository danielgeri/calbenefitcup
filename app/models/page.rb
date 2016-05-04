class Page < ActiveRecord::Base
  has_many :subpages, class_name: 'Page', foreign_key: 'parent_page_id'
  belongs_to :parent_page, class_name: 'Page'

  validates_uniqueness_of :permalink

  def to_param
    permalink
  end
end
