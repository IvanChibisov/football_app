class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.integer :first_club_id
      t.integer :second_club_id
      t.datetime :date

      t.timestamps
    end
  end
end
