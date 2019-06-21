class RemoveTrigrammeHautFromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :trigramme_haut, :string
  end
end
