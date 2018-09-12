require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'

class VendorTest < Minitest::Test
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_instance_of Vendor, vendor
  end

  def test_it_has_a_name
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_inventory_method_starts_with_empty_hash
    vendor = Vendor.new("Rocky Mountain Fresh")

    assert_equal [], vendor.inventory
  end

  def test_need_stock_method
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock({:Peaches => 30})
    assert_equal [{:Peaches => 30}], vendor.inventory
  end

  def test_there_is_a_check_stock_method
    # skip
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.check_stock({:Peaches => 0})
    assert_equal 0, vendor.check_stock
  end

  def test_case_name_we_can_increase_stock
    skip
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.check_stock("Peaches", 30)
    assert_equal 30, vendor.check_stock("Peaches", 30)

    # vendor.check_stock("Peaches", 30)
    # vendor.check_stock("Peaches", 25)
    # vendor.check_stock("Tomatoes", 12)
    # assert_equal 55, vendor.check_stock
  end

  def test_inventory_is_updated_in_hash
    skip
    vendor = Vendor.new("Rocky Mountain Fresh")

    vendor.check_stock("Peaches", 30)
    vendor.check_stock("Peaches", 30)
    vendor.check_stock("Tomatoes", 12)

    expected = {"Peaches"=>55, "Tomatoes"=>12}
    assert_equal expected, vendor.inventory
  end
end
