class CreateXes < ActiveRecord::Migration[5.1]
  def change
    create_table :xes do |t|
      t.string :bienxe
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
