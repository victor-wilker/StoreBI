require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference("Product.count") do
      post products_url, params: { product: { Customer_Name: @product.Customer_Name, Customer_Segment: @product.Customer_Segment, Order_ID: @product.Order_ID, Order_Priority: @product.Order_Priority, Order_Quantity: @product.Order_Quantity, Product_Category: @product.Product_Category, Profit: @product.Profit, Region: @product.Region, Sales: @product.Sales, Ship_Mode: @product.Ship_Mode } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { Customer_Name: @product.Customer_Name, Customer_Segment: @product.Customer_Segment, Order_ID: @product.Order_ID, Order_Priority: @product.Order_Priority, Order_Quantity: @product.Order_Quantity, Product_Category: @product.Product_Category, Profit: @product.Profit, Region: @product.Region, Sales: @product.Sales, Ship_Mode: @product.Ship_Mode } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference("Product.count", -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
