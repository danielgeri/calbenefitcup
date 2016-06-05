ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :title, :content, :menu_index, :parent_page, :forward_url,
                :is_displayed, :is_draft, :permalink, :parent_page_id, :meet_id,
                headlines_attributes:
                  [:id, :announcement, :published_on, :_destroy],
                images_attributes:
                  [:id, :image_location, :caption, :slide_index, :_destroy]

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
      f.input :meet
    end

    f.inputs do
      f.has_many :headlines,
                 new_record: 'Add Headline',
                 heading: 'For Homepage Use ONLY',
                 allow_destroy: true do |h|
        h.input :announcement, as: :ckeditor
        h.input :published_on, as: :datepicker
      end
    end

    f.inputs do
      f.has_many :images,
                 new_record: 'Add an Image',
                 heading: 'For Homepage Use ONLY',
                 allow_destroy: true do |i|
        i.input :image_location,
                as: :file,
                hint: image_tag(i.object.image_location(:thumb))
        i.input :caption
        i.input :slide_index
      end
    end
    f.actions
  end

  show do
    panel 'Page' do
      table_for page do
        column :id
        column :title
        column :menu_index
        column :parent_page
        column :forward_url
        column :is_displayed
        column :is_draft
      end
    end

    panel 'Page Content' do
      table_for page do
        column :content
      end
    end

    panel 'News Headlines' do
      table_for page.headlines do
        column :announcement
        column :published_on
      end
    end

    panel 'Images' do
      table_for page.images do
        column :image_location do |m|
          img src: m.image_location(:thumb)
        end
        column :caption
        column :slide_index
      end
    end
    active_admin_comments
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
