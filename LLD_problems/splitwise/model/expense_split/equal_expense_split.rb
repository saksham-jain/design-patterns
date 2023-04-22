require_relative 'expense_split'

class EqualExpenseSplit < ExpenseSplit
  def validate_split(amount:, splits:)
    amount > 0
  end

  def split_amount(amount:, splits:)
    split_amount = amount / splits.size
    h = {}
    splits.each do |user, _|
      h[user] = split_amount
    end
    h
  end
end