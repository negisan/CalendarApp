class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :label, null: false
      t.text :detail, null: false
      t.datetime :start_time, null: false

      t.timestamps
    end
  end
end
