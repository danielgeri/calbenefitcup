ActiveAdmin.register Meet do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  permit_params :starts_on, :ends_on, :gender, :name, :is_current, :register_by,
                :no_refund_after,
                page_attributes: [:id, :permalink, :content, :title, :_destroy]

  form do |f|
    f.inputs do
      f.input :name
      f.input :gender, as: :select, collection: ['male', 'female', 'co-ed']
      f.input :starts_on,
              as: :datepicker,
              datepicker_options: { min_date: '0D' }
      f.input :ends_on,
              as: :datepicker,
              datepicker_options: { min_date: '0D' }
      f.input :register_by,
              as: :datepicker
      f.input :no_refund_after,
              as: :datepicker,
              datepicker_options: { min_date: '0D' }
      f.input :is_current, label: 'Featured?'
    end

    f.inputs do
      f.has_many :page,
                 new_record: 'Add new page',
                 allow_destroy: true do |p|
        p.input :title
        p.input :permalink
        p.input :content, as: :ckeditor
      end
    end

    f.actions
  end

  show do
    panel 'Meet' do
      table_for meet do
        column :id
        column :name
        column :gender
        column :starts_on
        column :ends_on
        column :is_current
        column :register_by
        column :no_refund_after
      end
    end

    panel 'Page' do
      table_for meet.page do
        column :title
      end
    end
  end
end
