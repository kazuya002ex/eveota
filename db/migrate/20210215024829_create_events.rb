class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.time :start_time, null: false, comment: "開演時間"
      t.time :opening_time, null: false, comment: "開場時間"
      t.date :performance_date, null: false, comment: "公演日"
      t.references :venue, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end

    add_index :events, :name, unique: true
    add_index :performance_date
  end
end
