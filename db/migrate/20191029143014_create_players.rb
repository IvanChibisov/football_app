class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
	t.string :name
	t.integer :age
	t.integer :country_id
	t.integer :club_id
	t.string :position
      t.timestamps
    end
  end
end
