json.extract! product, :id, :Order_ID, :Order_Priority, :Order_Quantity, :Sales, :Ship_Mode, :Profit, :Customer_Name, :Region, :Customer_Segment, :Product_Category, :created_at, :updated_at
json.url product_url(product, format: :json)
