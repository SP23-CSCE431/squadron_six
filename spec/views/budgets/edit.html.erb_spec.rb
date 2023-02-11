require 'rails_helper'

RSpec.describe "budgets/edit", type: :view do
  let(:budget) {
    Budget.create!(
      user: "MyString",
      expense_type: "MyString",
      amount: 1.5,
      description: "MyString"
    )
  }

  before(:each) do
    assign(:budget, budget)
  end

  it "renders the edit budget form" do
    render

    assert_select "form[action=?][method=?]", budget_path(budget), "post" do

      assert_select "input[name=?]", "budget[user]"

      assert_select "input[name=?]", "budget[expense_type]"

      assert_select "input[name=?]", "budget[amount]"

      assert_select "input[name=?]", "budget[description]"
    end
  end
end
