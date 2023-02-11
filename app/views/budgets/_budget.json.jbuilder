json.extract! budget, :id, :user, :expense_type, :amount, :description, :created_at, :updated_at
json.url budget_url(budget, format: :json)
