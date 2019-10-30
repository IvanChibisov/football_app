class CreateChampionships < ActiveRecord::Migration[6.0]
  def change
    create_table :championships do |t|
      t.integer :country_id
      t.text :name
      t.integer :position_in_top

      t.timestamps
    end
  end
end
