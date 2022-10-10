require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Customer name", with: @product.Customer_Name
    fill_in "Customer segment", with: @product.Customer_Segment
    fill_in "Order id", with: @product.Order_ID
    fill_in "Order priority", with: @product.Order_Priority
    fill_in "Order quantity", with: @product.Order_Quantity
    fill_in "Product category", with: @product.Product_Category
    fill_in "Profit", with: @product.Profit
    fill_in "Region", with: @product.Region
    fill_in "Sales", with: @product.Sales
    fill_in "Ship mode", with: @product.Ship_Mode
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Customer name", with: @product.Customer_Name
    fill_in "Customer segment", with: @product.Customer_Segment
    fill_in "Order id", with: @product.Order_ID
    fill_in "Order priority", with: @product.Order_Priority
    fill_in "Order quantity", with: @product.Order_Quantity
    fill_in "Product category", with: @product.Product_Category
    fill_in "Profit", with: @product.Profit
    fill_in "Region", with: @product.Region
    fill_in "Sales", with: @product.Sales
    fill_in "Ship mode", with: @product.Ship_Mode
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
