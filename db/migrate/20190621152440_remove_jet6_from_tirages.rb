class RemoveJet6FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet6, :string
  end
end
