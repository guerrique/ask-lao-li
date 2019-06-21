class RemoveTrigrammeBasFromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :trigramme_bas, :string
  end
end
