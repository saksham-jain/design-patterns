require_relative 'split'

class Expense
  attr_reader :paid_by, :amount, :split_type, :splits

  def initialize(paid_by:, amount:, split_type:, splits:)
    @paid_by = paid_by
    @amount = amount
    @split_type = split_type
    @splits = []
    splits.each do |user, amount|
      @splits << Split.new(user: user, amount: amount)
    end
  end
end