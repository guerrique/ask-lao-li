class CreateTirages < ActiveRecord::Migration[5.2]
  def change
    create_table :tirages do |t|
      t.string :question
      t.string :jet1
      t.string :jet2
      t.string :jet3
      t.string :jet4
      t.string :jet5
      t.string :jet6
      t.references :hex_answer, foreign_key: true
      t.references :hex_perspective, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
