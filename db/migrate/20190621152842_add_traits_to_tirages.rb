class AddTraitsToTirages < ActiveRecord::Migration[5.2]
  def change
    add_column :tirages, :traits, :string
  end
end
