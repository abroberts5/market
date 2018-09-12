class Vendor
  attr_reader   :name,
                :inventory

  def initialize(name)
    @name         = name
    @inventory    = []
    @check_stock  = 0

  end

  def stock(hash)
    @inventory << hash
  end

  def check_stock(hash)
    @check_stock = @inventory[:item].count
  end
end
