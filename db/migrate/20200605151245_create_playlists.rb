class CreatePlaylists < ActiveRecord::Migration[5.2]
  def change
    create_table :playlists do |t|
      t.string :playlist_name, null: false
      t.text :description
      t.integer :user_id, null: false
      t.boolean :private, null: false, default: false

      t.timestamps
    end
    add_index :playlists, :playlist_name
    add_index :playlists, :user_id
  end
end
