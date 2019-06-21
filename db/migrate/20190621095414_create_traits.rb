class CreateTraits < ActiveRecord::Migration[5.2]
  def change
    create_table :traits do |t|
      t.string :nom
      t.string :jet_brut
      t.string :jet_ordered
      t.references :tirage, foreign_key: true

      t.timestamps
    end
  end
end
