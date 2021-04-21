# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create! ([
  first_name: "Brian",
  last_name: "Rice",
  email: "RiceRiceBaby@gmail.com",
  phone_number: "555-123-4567",
  short_bio: "If I'm not teaching the creators of tomorrow, I'm probably enjoying a bowl of quin-oa!",
  linkedin_url: "linkedIn/braice57",
  twitter_handle: "/TheRealBRice",
  personal_website_url: "https://www.BriansWorld.com/",
  online_resume_url: "tbd",
  github_url: "brian57",
  photo: "",
])

Experience.create! ([
                     start_date: "1/1/1950",
                     end_date: "4/17/2021",
                     job_title: "Secret Agent",
                     company_name: "Her Majesty's Secret Service",
                     details: "A man of mystery ... who's also looking to take psych 101 class",
                     student_id: 1,
                   ])

Skill.create! ([
  skill_name_1: "skill_name_1",
  skill_name_2: "skill_name_2",
  skill_name_3: "skill_name_3",
  skill_name_4: "skill_name_4",
  student_id: 1,
])

Education.create! ([
                    start_date: "9/10/1995",
                    end_date: "5/1/1999",
                    degree: "BA in Purple Rain",
                    university_name: "Prince University",
                    details: "I learned to party like ...",
                    student_id: 1,
                  ])

Capstone.create! ([
  name: "byte_me_app",
  description: "An app that reminds students of the essentials: to commit often, to actually read error messages, and to use tomato timer",
  url: "tbd",
  screenshot: "tbd",
  student_id: 1,
])
