class CreateTrigrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :trigrammes do |t|
      t.string :nom
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
