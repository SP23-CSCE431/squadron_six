require 'rails_helper'

RSpec.describe "budgets/show", type: :view do
  before(:each) do
    assign(:budget, Budget.create!(
      user: "User",
      expense_type: "Expense Type",
      amount: 2.5,
      description: "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Expense Type/)
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
  end
end
