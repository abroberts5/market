class Vendor
  attr_reader   :name,
                :inventory

  def initialize(name)
    @name         = name
    @inventory    = {}
    @check_stock  = 0
  end

  def stock(item, count)
    require 'pry'; binding.pry
  end

  def check_stock(item)
    @inventory[:item].count
  end

  # test.split(',').each do |pair|
  #
  #       key,value = pair.split(/:/)
  #       hash[key.to_sym] = value
end
