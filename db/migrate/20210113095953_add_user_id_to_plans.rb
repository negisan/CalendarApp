class AddUserIdToPlans < ActiveRecord::Migration[6.0]
  def change
    add_reference :plans, :user, foreign_key: true, null: false
  end
end
