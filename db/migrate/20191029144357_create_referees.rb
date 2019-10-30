class CreateReferees < ActiveRecord::Migration[6.0]
  def change
    create_table :referees do |t|
      t.integer :age
      t.text :name
      t.integer :coutry_id

      t.timestamps
    end
  end
end
