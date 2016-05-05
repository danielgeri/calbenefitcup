class Page < ActiveRecord::Base
  has_many :subpages, class_name: 'Page', foreign_key: 'parent_page_id'
  belongs_to :parent_page, class_name: 'Page'

  validates_uniqueness_of :permalink
  validates_presence_of :permalink, :title

  before_validation :permalink_from_title
  
  def permalink_from_title
    self.permalink = self.title.parameterize if self.permalink == ''
  end
  
  def to_param
    permalink
  end
end
