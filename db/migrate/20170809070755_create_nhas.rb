class CreateNhas < ActiveRecord::Migration[5.1]
  def change
    create_table :nhas do |t|
      t.string :phong
      t.string :tang
      t.string :songuoi
      t.integer :gia
      t.references :hoadon, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
