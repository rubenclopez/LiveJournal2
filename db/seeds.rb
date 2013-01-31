# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
User.create(username: "rubenl", password: "welcome", password_confirmation: "welcome", first_name: "Ruben", last_name: "Lopez", active: true)
Journal.create(name: "Dream Journal", description: "My dreams", private: false, user_id: 1)

Entry.create(title: "My first dream", body: "Here goes with my first dream.", journal_id: 1)
Entry.create(title: "My second dream", body: "Here goes with my second dream.", journal_id: 1)
Entry.create(title: "My third dream", body: "Here goes with my third dream.", journal_id: 1)
Entry.create(title: "My fourth dream", body: "Here goes with my fourth dream.", journal_id: 1)
Entry.create(title: "My fifth dream", body: "Here goes with my fifth dream.", journal_id: 1)
