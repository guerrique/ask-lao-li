class RemoveJet5FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet5, :string
  end
end
