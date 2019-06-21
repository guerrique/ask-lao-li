class RemoveJet1FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet1, :string
  end
end
