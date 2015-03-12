class AddExpiresOnToAnnouncements < ActiveRecord::Migration
  def change
  	add_column :testimonials, :expires, :datetime
  end
end
