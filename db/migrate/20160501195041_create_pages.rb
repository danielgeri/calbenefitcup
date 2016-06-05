class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :permalink, null: false, index: true
      t.integer :menu_index, default: 0
      t.references :parent_page, index: true
      t.references :meet, index: true
      t.string :forward_url, default: ''
      t.boolean :is_displayed, default: true
      t.boolean :is_draft, default: false

      t.timestamps
    end
  end
end
