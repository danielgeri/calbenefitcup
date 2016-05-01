class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
