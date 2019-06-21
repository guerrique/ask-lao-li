class RemoveJet3FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet3, :string
  end
end
