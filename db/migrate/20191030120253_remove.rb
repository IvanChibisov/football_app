class Remove < ActiveRecord::Migration[6.0]
  def change
    remove_column :clubs, :campionship_id, :integer
    add_column :clubs, :championship_id, :integer
  end
end
