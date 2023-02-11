require 'rails_helper'

RSpec.describe "budgets/index", type: :view do
  before(:each) do
    assign(:budgets, [
      Budget.create!(
        user: "User",
        expense_type: "Expense Type",
        amount: 2.5,
        description: "Description"
      ),
      Budget.create!(
        user: "User",
        expense_type: "Expense Type",
        amount: 2.5,
        description: "Description"
      )
    ])
  end

  it "renders a list of budgets" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("User".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Expense Type".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.5.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
