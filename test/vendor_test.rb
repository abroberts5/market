require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'

class VendorTest < Minitest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_return_of_name
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_is_empty
    vendor = Vendor.new("Rocky Mountain Fresh")
    empty_hash = {}

    assert_equal empty_hash, vendor.inventory
  end

  def test_check_stock_method_is_zero
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.check_stock("Peaches")
    assert_equal 0, vendor.check_stock
  end

  def test_adding_stock_increases_check_stock
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)
    assert_equal 30, vendor.check_stock
  end
end
