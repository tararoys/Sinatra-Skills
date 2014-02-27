require 'faker'

# create a few users
# User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
# 5.times do
#   User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
# end

# # create a few technical skills
# computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
# computer_skills.each do |skill|
#   Skill.create :name => skill, :context => 'technical'
# end

# # create a few creative skills
# design_skills = %w(Photoshop Illustrator Responsive-Design)
# design_skills.each do |skill|
#   Skill.create :name => skill, :context => 'creative'
# end

# TODO: create associations between users and skills

  zoe = User.create(name: "Zoe", email: "serenity@serenity.com", password: "password")
  inara = User.create(name: "Inara", email: "serenity2@serenity.com", password: "password")

  javascript = Skill.create(name: "Javascript", context: "technical")
  ruby = Skill.create(name: "ruby", context: "technical")

  zoe_knows_javascript = Proficiency.create(user_id: zoe.id, skill_id: javascript.id, years: 2, formal: false)
  zoe_knows_ruby = Proficiency.create(user_id: zoe.id, skill_id: ruby.id, years: 2, formal: false)

  inara_knows_javascript = Proficiency.create(user_id: inara.id, years: 2, skill_id: javascript.id, formal: true) #for some reason, inara's id is being defined as nil in the database
  inara_knows_ruby = Proficiency.create(user_id: inara.id, years: 2, skill_id: ruby.id, formal: true)       
        