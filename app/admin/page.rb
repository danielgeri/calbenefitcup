ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :content, :menu_index, :parent_page, :forward_url,
                :is_displayed, :is_draft, :permalink, :parent_page_id

  controller do
    def find_resource
      Page.find_by_permalink!(params[:id])
    end
  end
  
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
    f.actions
  end
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
