require 'spec_helper'

describe Proficiency do
  context "create migration" do
  
    after do
      User.delete_all
      Skill.delete_all
      Proficiency.delete_all
    end
    
    it "should have a user_id" do
      a_mock = Proficiency.create(user_id: 1, skill_id: 1, years: 6, formal: true);

      expect(a_mock.user_id).to eq(1) 
      expect(a_mock.skill_id).to eq(1)
      expect(a_mock.years).to eq(6)
      expect(a_mock.formal?).to eq true
    end


  context "create associations" do 

      it "tests that all of the associations are set up correctly" do
        zoe = User.create(name: "Zoe", email: "serenity@serenity.com", password: "password")
        inara = User.create(name: "Inara", email: "serenity@serenity.com", password: "password")

        javascript = Skill.create(name: "Javascript", context: "technical")
        ruby = Skill.create(name: "ruby", context: "technical")

        zoe_knows_javascript = Proficiency.create(user_id: zoe.id, skill_id: javascript.id, formal: false)
        zoe_knows_ruby = Proficiency.create(user_id: zoe.id, skill_id: ruby.id, formal: false)

        inara_knows_javascript = Proficiency.create(user_id: inara.id, skill_id: javascript.id, formal: true) #for some reason, inara's id is being defined as nil in the database
        inara_knows_ruby = Proficiency.create(user_id: inara.id, skill_id: ruby.id, formal: true)       
        
        expect(zoe.proficiencies.count).to eq(2) #user has many proficiencies
        expect(zoe.skills.count).to eq(2)

        expect(javascript.proficiencies).to eq(2)
        expect(javascript.users).to eq(1)



      end
    end

  end

end
