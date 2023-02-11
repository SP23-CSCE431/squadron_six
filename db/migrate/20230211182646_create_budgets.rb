class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :user
      t.string :expense_type
      t.float :amount
      t.string :description

      t.timestamps
    end
  end
end
