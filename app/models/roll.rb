class Roll

  def initialize(quantity, value)
    @quantity = quantity
    @value = value
  end

  def self.method_missing(name, *args, &block)
    name = name.to_s
    if name =~ /^[d,k]\d+$/
      quantity = 1
      if args[0] and args[0].is_a?(Fixnum)
        quantity = args[0]
      end
      die = name.match(/^[d,k](\d+)$/)[1].to_i
    else
      super
    end
    self.roll die, quantity
  end

  def self.roll(die, quantity = 1)
    sum = 0
    quantity.times { sum += Random.rand(1..die) }
    sum
  end
end
