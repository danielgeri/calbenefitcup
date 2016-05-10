class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :page, index: true
      t.attachment :image_location, null: false
      t.string :caption, default: ''
      t.integer :slide_index, default: 0
      t.timestamps
    end
  end
end
