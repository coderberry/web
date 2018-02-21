class CreateImpressions < ActiveRecord::Migration[5.2]
  def change
    create_table :impressions, id: :uuid do |t|
      t.references :sponsorship, foreign_key: true, type: :uuid
      t.references :property, foreign_key: true, type: :uuid
      t.uuid :developer_id, null: false
      t.uuid :sponsor_id, null: false

      # standard
      t.string :ip
      t.text :user_agent

      # technology
      t.string :browser
      t.string :os
      t.string :device_type
      t.integer :screen_height
      t.integer :screen_width

      # location
      t.string :country
      t.string :region
      t.string :city
      t.string :postal_code
      t.decimal :latitude
      t.decimal :longitude

      # utm parameters
      t.string :utm_source
      t.string :utm_medium
      t.string :utm_term
      t.string :utm_content
      t.string :utm_campaign

      t.index :ip
      t.index :developer_id
      t.index :sponsor_id

      t.timestamps
    end
  end
end
