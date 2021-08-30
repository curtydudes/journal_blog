require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = Category.create(category_name: "Household Chores")
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  # HAVE THIS TESTED

  # test "should create category" do 
  #   # we want to see the change in number of categories once it is created
  #   assert_difference('Category.count', 1) do
  #     # a post is sending the category path 
  #     post categories_url, params: { category: {category_name: "Travel" } }
  #   end
  #   # whatever the category will be will show in the category webpage
  #   assert_redirected_to category_url(Category.last)
  # end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  # test "should get edit" do
  #   get edit_category_url(@category)
  #   assert_response :success
  # end

  # test "should update category" do
  #   patch category_url(@category), params: { category: {  } }
  #   assert_redirected_to category_url(@category)
  # end

  # test "should destroy category" do
  #   assert_difference('Category.count', -1) do
  #     delete category_url(@category)
  #   end

  #   assert_redirected_to categories_url
  # end
end
