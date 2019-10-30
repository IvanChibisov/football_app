class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.text :name
      t.integer :club_id

      t.timestamps
    end
  end
end
