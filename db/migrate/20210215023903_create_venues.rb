class CreateVenues < ActiveRecord::Migration[6.1]
  def change
    create_table :venues do |t|
      t.string :name, null: false, comment: "会場名"
      t.string :station, null: false, comment: "最寄り駅名"
      t.string :location, null: false, comment: "会場の住所"
      t.integer :walk, null: false, limit: 3, comment: "徒歩時間"
      t.float :latitude, null: false, comment: "緯度"
      t.float :longitude, null: false, comment: "経度"

      t.timestamps
    end

    add_index :venues, :station
    add_index :venues, :name
  end
end
