ActiveAdmin.register Page do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :content, :menu_index, :subpages, :forward_url,
                :is_displayed, :is_draft

  form do |f|
    f.inputs do
      f.input :title
      f.input :content, :as => :ckeditor
      f.input :menu_index
      f.input :subpages
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
