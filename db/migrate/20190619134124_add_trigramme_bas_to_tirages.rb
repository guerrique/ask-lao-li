class AddTrigrammeBasToTirages < ActiveRecord::Migration[5.2]
  def change
    add_column :tirages, :trigramme_bas, :string
  end
end
