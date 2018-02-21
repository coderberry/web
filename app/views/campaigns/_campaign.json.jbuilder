json.extract! campaign, :id, :name, :daily_budget_cents, :monthly_budget_cents, :total_budget_cents, :bid_amount_cents, :redirect_url, :status, :created_at, :updated_at
json.url campaign_url(campaign, format: :json)
