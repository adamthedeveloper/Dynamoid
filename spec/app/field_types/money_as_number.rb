require_relative 'money_base'

class MoneyAsNumber < MoneyBase
  def self.dynamoid_load(str)
    if !str.nil?
      self.new(BigDecimal.new(str))
    end
  end

  def self.load(str)
    raise 'This should not have been called.'
  end

  def self.dynamoid_field_type
    :number
  end

  def dynamoid_dump
    @v.to_f
  end

  def dump
    raise 'This should not have been called.'
  end
end
