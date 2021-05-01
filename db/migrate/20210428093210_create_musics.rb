class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics do |t|
      t.string :musics_name,       null: false
      t.text :description,         null: false
      t.integer :price,            null: false
      t.integer :genre_id,            null: false
      t.integer :image_id,      null: false
      t.references :user,   foreign_key: true
      t.timestamps
    end
  end
end
