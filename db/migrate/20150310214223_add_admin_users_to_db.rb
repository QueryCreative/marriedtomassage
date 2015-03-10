class AddAdminUsersToDb < ActiveRecord::Migration
  def change
  	User.create!(name:  "Joshua Schmitz",
             email: "josh.schmitz.dev@gmail.com",
             password:              "changeme",
             password_confirmation: "changeme",
             admin: true)
  	User.create!(name:  "Katrina Snoke",
             email: "marriedtomassage@gmail.com",
             password:              "changeme",
             password_confirmation: "changeme",
             admin: true)

  end
end

