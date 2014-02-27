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
  end

end
