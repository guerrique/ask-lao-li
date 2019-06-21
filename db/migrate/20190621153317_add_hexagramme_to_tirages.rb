class AddHexagrammeToTirages < ActiveRecord::Migration[5.2]
  def change
    add_reference :tirages, :hexagramme, foreign_key: true
  end
end
