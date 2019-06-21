class RemoveTraitsFromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :traits, :string
  end
end
