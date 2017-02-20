json.extract! expense, :id, :description, :receipt_url, :user_id, :meeting_id, :accepted, :bookkeeping, :amount, :created_at, :updated_at
json.url expense_url(expense, format: :json)