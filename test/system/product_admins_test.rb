require "application_system_test_case"

class ProductAdminsTest < ApplicationSystemTestCase
  setup do
    @product_admin = product_admins(:one)
  end

  test "visiting the index" do
    visit product_admins_url
    assert_selector "h1", text: "Product Admins"
  end

  test "creating a Product admin" do
    visit product_admins_url
    click_on "New Product Admin"

    click_on "Create Product admin"

    assert_text "Product admin was successfully created"
    click_on "Back"
  end

  test "updating a Product admin" do
    visit product_admins_url
    click_on "Edit", match: :first

    click_on "Update Product admin"

    assert_text "Product admin was successfully updated"
    click_on "Back"
  end

  test "destroying a Product admin" do
    visit product_admins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product admin was successfully destroyed"
  end
end
