# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Choice.delete_all
Choice.create([
  { name: "Should I quit my job?", user_id: 1 },
  { name: "Should I get married?", user_id: 1 },
  { name: "Should I buy a new car?", user_id: 1 },
])
