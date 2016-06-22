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

  def construct_nav
    Page.where(is_draft: false, is_displayed: true)
        .where.not(permalink: 'home')
        .order(parent_page_id: :asc, menu_index: :asc)
        .pluck(:permalink, :title, :id, :parent_page_id, :menu_index)
        .group_by { |menu_props| menu_props[3] }
  end

  def find_subpage(permalink)
    page = subpages.select do |subpage|
      subpage[:permalink] == permalink
    end
    page.first
  end

  def find_images
    images.order(:slide_index)
  end

  def find_headlines
    headlines.order(published_on: :desc)
  end

  def find_meet
    Meet.includes(:page).find_by(is_current: true)
  end
end
