class CreateHexagrammes < ActiveRecord::Migration[5.2]
  def change
    create_table :hexagrammes do |t|
      t.integer :numero
      t.string :nom
      t.text :description
      t.text :jugement
      t.text :jugement_description
      t.text :trait1
      t.text :trait1_description
      t.text :trait2
      t.text :trait2_description
      t.text :trait3
      t.text :trait3_description
      t.text :trait4
      t.text :trait4_description
      t.text :trait5
      t.text :trait5_description
      t.text :trait6
      t.text :trait6_description
      t.text :grande_image
      t.text :dixieme_aile
      t.text :nucleaire
      t.text :oppose
      t.text :renverse
      t.string :image
      t.string :trigramme_haut
      t.string :trigramme_bas

      t.timestamps
    end
  end
end
