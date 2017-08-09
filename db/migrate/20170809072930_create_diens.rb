class CreateDiens < ActiveRecord::Migration[5.1]
  def change
    create_table :diens do |t|
      t.integer :gia
      t.references :hoadon, foreign_key: true
      t.timestamps
    end
  end
end
