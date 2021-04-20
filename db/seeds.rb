# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

experiences = Experience.create ([
  start_date: "1/1/1950",
  end_date: "4/17/2021",
  job_title: "Secret Agent",
  company_name: "Her Majesty's Secret Service",
  details: "A man of mystery ... who's also looking to take psych 101 class",
  student_id: 007,
])

start_date
end_date
job_title
company_name
details
student_id
e = Experience.new({ start_date: "1/1/1950", end_date: "4/17/2021", job_title: "Secret Agent", company_name: "Her Majesty's Secret Service", details: "A man of mystery ... who's also looking to take psych 101 class", student_id: 77 })
