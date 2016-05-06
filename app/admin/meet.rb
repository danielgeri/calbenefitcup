ActiveAdmin.register Meet do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :starts_on, :ends_on, :gender, :name, :is_current, :register_by,
                :no_refund_after

  form do |f|
    f.inputs do
      f.input :name
      f.input :gender, as: :select, collection: ["boys", "girls", "co-ed"]
      f.input :starts_on,
              as: :datepicker,
              datepicker_options: { min_date: "1D" }
      f.input :ends_on,
              as: :datepicker,
              datepicker_options: { min_date: "1D" }
      f.input :register_by,
              as: :datepicker,
              datepicker_options: { min_date: "1D" }
      f.input :no_refund_after,
              as: :datepicker,
              datepicker_options: { min_date: "1D" }
      f.input :is_current
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
