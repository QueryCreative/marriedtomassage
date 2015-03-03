User.create!(name:  "Joshua Schmitz",
             email: "josh.schmitz@querycreative.net",
             password:              "foobar87",
             password_confirmation: "foobar87",
             admin: true)

User.create!(name:  "JS",
             email: "js@the42.com",
             password:              "foobar87",
             password_confirmation: "foobar87",
             admin: true)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

19.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end