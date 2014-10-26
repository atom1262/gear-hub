class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :bio
      t.string :image
      t.string :band

      t.timestamps
    end
  end
end
