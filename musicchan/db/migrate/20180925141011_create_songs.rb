class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    enable_extension "hstore"
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :user_id
      t.text :songdata, array: true, default: []

      t.timestamps
    end
  end
end
