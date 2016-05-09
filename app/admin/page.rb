ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :content, :menu_index, :parent_page, :forward_url,
                :is_displayed, :is_draft, :permalink, :parent_page_id,
                headlines_attributes: [:id, :announcement, :published_on],
                images_attributes:
                  [:id, :image_location, :caption, :slide_index]

  form do |f|
    f.inputs do
      f.input :title
      f.input :permalink
      f.input :content, :as => :ckeditor
      f.input :menu_index
      f.input :parent_page
      f.input :forward_url
      f.input :is_displayed
      f.input :is_draft
    end
    f.inputs do
      f.has_many :headlines, new_record: 'Add Headline' do |h|
        h.input :announcement, as: :ckeditor
        h.input :published_on, as: :datepicker
      end
    end
    f.inputs do
      f.has_many :images, new_record: 'Add an Image' do |i|
        i.input :image_location, as: :file
        i.input :caption
        i.input :slide_index
      end
    end
    f.actions
  end
end

ActiveAdmin.register Headline do
  belongs_to :page
  navigation_menu :page
end

ActiveAdmin.register Image do
  belongs_to :page
  navigation_menu :page
end
