require "test_helper"

class ProductAdminsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_admin = product_admins(:one)
  end

  test "should get index" do
    get product_admins_url
    assert_response :success
  end

  test "should get new" do
    get new_product_admin_url
    assert_response :success
  end

  test "should create product_admin" do
    assert_difference('ProductAdmin.count') do
      post product_admins_url, params: { product_admin: {  } }
    end

    assert_redirected_to product_admin_url(ProductAdmin.last)
  end

  test "should show product_admin" do
    get product_admin_url(@product_admin)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_admin_url(@product_admin)
    assert_response :success
  end

  test "should update product_admin" do
    patch product_admin_url(@product_admin), params: { product_admin: {  } }
    assert_redirected_to product_admin_url(@product_admin)
  end

  test "should destroy product_admin" do
    assert_difference('ProductAdmin.count', -1) do
      delete product_admin_url(@product_admin)
    end

    assert_redirected_to product_admins_url
  end
end
