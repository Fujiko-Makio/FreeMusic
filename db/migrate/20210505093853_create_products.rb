class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer      :genre_id,            null: false
      t.integer :image_id,      null: false
      t.references :music,   foreign_key: true

      t.timestamps
    end
  end
end
