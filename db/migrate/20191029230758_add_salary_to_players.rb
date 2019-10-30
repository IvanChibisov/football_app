class AddSalaryToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :salary, :float
    add_column :coaches, :salary, :float
    add_column :referees, :salary, :float
  end
end
