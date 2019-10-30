class RemoveFromCountries < ActiveRecord::Migration[6.0]
  def change
    remove_column :countries, :position_in_coutry_table, :integer
    remove_column :countries, :campionship_id, :text
    add_column :countries, :position_in_country_table, :integer
    add_column :countries, :campionship_id, :integer
  end
end
