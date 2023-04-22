# validates split, create expense split object, sets amount, create expense 
class ExpenseService
  def perform(paid_by:, amount:, split_type:, splits: {})
    expense_split = SplitFactory.get_expense_object(split_type: split_type)
    expense_split.validate_split(amount: amount, splits: splits)
    splits = expense_split.split_amount(amount: amount, splits: splits) #map
    Expense.new(paid_by: paid_by, amount: amount, split_type: split_type, splits: splits)
  end
end