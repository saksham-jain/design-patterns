require_relative 'expense_split/expense_split'
require_relative 'expense_split/equal_expense_split'
require_relative 'expense_split/percentage_expense_split'
require_relative 'expense_split/exact_expense_split'

class SplitFactory
  def self.get_expense_object(split_type:)
    if split_type = ExpenseSplit::TYPES["EQUAL"]
      EqualExpenseSplit.new
    elsif split_type = ExpenseSplit::TYPES["PERCENTAGE"]
      PercentageExpenseSplit.new
    elsif split_type = ExpenseSplit::TYPES["EXACT"]
      ExactExpenseSplit.new
    else
      nil
    end
  end
end