class CreateSponsorships < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsorships, id: :uuid do |t|
      t.references :property, foreign_key: true, type: :uuid
      t.references :campaign, foreign_key: true, type: :uuid
      t.string :token, null: false
      t.integer :bid_amount_cents

      t.index :token, unique: true

      t.timestamps
    end
  end
end
