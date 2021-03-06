require "test_helper"

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new(category_name:"Household Chores")
  end

  test "category_name should be valid" do
    assert @category.valid?
  end

  test "category_name should be present" do
    @category.category_name = " "
    assert_not @category.valid?
  end

  test "category_name should be unique" do
    @category.save
    @category2 = Category.new(category_name: "Household Chores")
    assert_not @category2.valid?
  end

  test "category_name should not be too long" do
    @category.category_name = "a" * 26
    assert_not @category.valid?
  end

  test "category_name should not be too short" do
    @category.category_name = "aa" 
    assert_not @category.valid?
  end

end


