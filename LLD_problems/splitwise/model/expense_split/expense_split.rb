# Interface
class ExpenseSplit
  TYPES = {
    'EQUAL' => 0,
    'PERCENTAGE' => 1,
    'EXACT' => 2
  }

  def validate_amount(amount:, splits:)
    raise 'Not implemented'
  end

  def split_amount(amount:, splits:)
    raise 'Not implemented'
  end
end