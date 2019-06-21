class RemoveHexagrammeFromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :hexagramme, :string
  end
end
