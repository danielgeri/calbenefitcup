class Page < ActiveRecord::Base
  has_many :subpages, class_name: 'Page', foreign_key: 'parent_page_id'
  belongs_to :parent_page, class_name: 'Page'
  has_many :headlines
  has_many :images

  accepts_nested_attributes_for :headlines, :images

  validates_uniqueness_of :permalink
  validates_presence_of :permalink, :title

  before_validation :permalink_from_title
  
  def permalink_from_title
    self.permalink = title.parameterize if permalink == ''
  end
  
  def to_param
    permalink
  end
end
