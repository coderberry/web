class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid
      t.string :name, null: false, default: ""
      t.integer :daily_budget_cents, default: 0, null: false
      t.integer :monthly_budget_cents, default: 0, null: false
      t.integer :total_budget_cents, default: 0, null: false
      t.integer :bid_amount_cents, default: 0, null: false
      t.text :redirect_url, null: false, default: ""
      t.integer :status, default: 0, null: false

      t.timestamps
    end
  end
end
