class AddExpiresOnToSpecials < ActiveRecord::Migration
  def change
  	add_column :specials, :expires, :datetime
  end
end