require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do


      it "should not be valid without usename" do
        @user = build(:user, username: "")
        expect(@user.save).to be false
      end
      
      it "username should be unique" do
        @user = build(:user, username: "acps")
        @user.save
        @user = build(:user, username: "acps", email: "acps91@gmail.com")
        expect(@user.save).to be false
      end
      
      it "should not be valid without name" do
        @user = build(:user, name: "")
        expect(@user.save).to be false
      end
     
     it "should not be valid without lastname" do
        @user = build(:user, lastname: "")
        expect(@user.save).to be false
     end
     
     it "should not be valid without email" do
        @user = build(:user, email: "")
        expect(@user.save).to be false
     end
     
     it "email should be unique" do
        @user = build(:user)
        @user.save
        @user = build(:user, email: "apalmeras91@gmail.com")
        expect(@user.save).to be false
     end
     
     it "should not be valid without password" do
        @user = build(:user, password: "")
        expect(@user.save).to be false
     end


    end

   

  end

end