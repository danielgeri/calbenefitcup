class Page < ActiveRecord::Base
  has_many :subpages, class_name: 'Page', foreign_key: 'parent_page_id'
  belongs_to :parent_page, class_name: 'Page'
  belongs_to :meet
  has_many :headlines
  has_many :images

  accepts_nested_attributes_for :headlines, allow_destroy: true
  accepts_nested_attributes_for :images, allow_destroy: true

  validates :permalink, uniqueness: { scope: :parent_page_id }
  validates_presence_of :permalink, :title
  validate :cannot_display_draft

  before_validation :permalink_from_title

  def cannot_display_draft
    errors.add(:is_displayed, 'cannot be a draft too') if is_displayed &&
                                                          is_draft
  end

  def permalink_from_title
    self.permalink = title.parameterize if permalink == ''
  end
end
