class AddTrigrammeHautToTirages < ActiveRecord::Migration[5.2]
  def change
    add_column :tirages, :trigramme_haut, :string
  end
end
