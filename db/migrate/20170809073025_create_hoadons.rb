class CreateHoadons < ActiveRecord::Migration[5.1]
  def change
    create_table :hoadons do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
