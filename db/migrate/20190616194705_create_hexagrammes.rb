class CreateHexagrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :hexagrammes do |t|
      t.string :nom
      t.string :description
      t.string :trait1
      t.string :trait2
      t.string :trait3
      t.string :trait4
      t.string :trait5
      t.string :trait6
      t.string :image
      t.integer :numero
      t.string :trigramme_haut
      t.string :trigramme_bas
      t.string :oppose
      t.string :reverse

      t.timestamps
    end
  end
end
