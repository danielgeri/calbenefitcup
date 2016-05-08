class CreateHeadlines < ActiveRecord::Migration
  def change
    create_table :headlines do |t|
      t.references :page, index: true
      t.text :announcement, limit: 500, null: false
      t.date :published_on, null: false
    end
  end
end
