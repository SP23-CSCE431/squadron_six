require 'rails_helper'

RSpec.describe "budgets/new", type: :view do
  before(:each) do
    assign(:budget, Budget.new(
      user: "MyString",
      expense_type: "MyString",
      amount: 1.5,
      description: "MyString"
    ))
  end

  it "renders new budget form" do
    render

    assert_select "form[action=?][method=?]", budgets_path, "post" do

      assert_select "input[name=?]", "budget[user]"

      assert_select "input[name=?]", "budget[expense_type]"

      assert_select "input[name=?]", "budget[amount]"

      assert_select "input[name=?]", "budget[description]"
    end
  end
end
