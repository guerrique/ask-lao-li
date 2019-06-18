class CreateHexPerspectives < ActiveRecord::Migration[5.2]
  def change
    create_table :hex_perspectives do |t|
      t.references :hexagramme, foreign_key: true

      t.timestamps
    end
  end
end
