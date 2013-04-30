class CreateFoodDes < ActiveRecord::Migration
  def change
    create_table :food_des do |t|

      t.timestamps
    end
  end
end
