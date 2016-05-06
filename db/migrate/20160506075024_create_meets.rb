class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.date :starts_on, null: false
      t.date :ends_on, null: false
      t.string :gender, null: false
      t.string :name, null: false
      t.boolean :is_current, default: true
      t.date :register_by
      t.date :no_refund_after

      t.timestamps
    end
  end
end
