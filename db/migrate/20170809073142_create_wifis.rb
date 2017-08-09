class CreateWifis < ActiveRecord::Migration[5.1]
  def change
    create_table :wifis do |t|
      t.string :password
      t.string :ssid
      t.integer :gia
      t.references :hoadon, foreign_key: true
      t.timestamps
    end
  end
end
