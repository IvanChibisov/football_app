class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.text :name
      t.text :continent
      t.text :championship_id
      t.integer :position_in_coutry_table		
      t.timestamps
    end
  end
end
