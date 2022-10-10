class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :Order_ID
      t.string :Order_Priority
      t.integer :Order_Quantity
      t.decimal :Sales
      t.string :Ship_Mode
      t.float :Profit
      t.string :Customer_Name
      t.string :Region
      t.string :Customer_Segment
      t.string :Product_Category

      t.timestamps
    end
  end
end
