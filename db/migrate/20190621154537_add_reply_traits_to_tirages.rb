class AddReplyTraitsToTirages < ActiveRecord::Migration[5.2]
  def change
    add_column :tirages, :reply_traits, :string
  end
end
