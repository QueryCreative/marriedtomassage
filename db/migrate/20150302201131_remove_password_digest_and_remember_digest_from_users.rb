class RemovePasswordDigestAndRememberDigestFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :password_digest
  	remove_column :users, :remember_digest
  end
end
