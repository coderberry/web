class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid
      t.string :name, null: false, default: ""
      t.string :url, null: false, default: ""

      t.timestamps
    end
  end
end
