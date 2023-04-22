require_relative '../service/expense_service'

class Group
  attr_accessor :name, :users, :expenses, :expense_service

  def initialize(name:)
    @name = name
    @users = []
    @expenses = []
    @expense_service = ExpenseService.new # Breaking dependency injection intentionally
  end

  def add_users(users:)
    @users << users
  end

  def add_expense(paid_by:, amount:, split_type:, splits: {})
    expense_service.perform(
      paid_by: paid_by,
      amount: amount,
      split_type: split_type,
      splits: splits
    )
  end
end