class RemoveJet2FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet2, :string
  end
end
