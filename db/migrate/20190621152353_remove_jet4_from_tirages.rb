class RemoveJet4FromTirages < ActiveRecord::Migration[5.2]
  def change
    remove_column :tirages, :jet4, :string
  end
end
