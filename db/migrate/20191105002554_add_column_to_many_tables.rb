class AddColumnToManyTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :countries, :championship_id, :text
    remove_column :referees, :coutry_id, :integer
    add_column :referees, :country_id, :integer
    add_column :countries, :championship_id, :integer
    remove_column :clubs, :campionship_id, :integer
    remove_column :countries, :campionship_id, :integer

    add_foreign_key :coaches, :clubs
    add_foreign_key :clubs, :championships
    add_foreign_key :matches, :clubs, column: :first_club_id
    add_foreign_key :matches, :clubs, column: :second_club_id
    add_foreign_key :championships, :countries
    add_foreign_key :players, :clubs
    add_foreign_key :players, :countries
    add_foreign_key :referees, :countries

    # add_column :clubs, :championship_id, :belong_to :championship
    # add_column :matches, :first_club_id, :belong_to :club
    # add_column :matches, :second_club_id, :belong_to :club
    # add_column :championships, :country_id, :belong_to :country
    # add_column :players, :club_id, :belong_to :club
    # add_column :players, :country_id, :belong_to :country
    # add_column :referees, :country, :belong_to :country
  end
end
