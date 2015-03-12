class AddExpiresOnToAnnouncementsAgain < ActiveRecord::Migration
  def change
  	add_column :announcements, :expires, :datetime
  end
end
