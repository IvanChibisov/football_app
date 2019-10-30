class CreateClubs < ActiveRecord::Migration[6.0]
  def change
    create_table :clubs do |t|
      t.text :name
      t.integer :campionship_id
      t.integer :coach_id

      t.timestamps
    end
  end
end
