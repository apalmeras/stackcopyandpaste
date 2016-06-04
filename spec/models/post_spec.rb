require 'rails_helper'

RSpec.describe Post, type: :model do

  describe "creation" do

    it "has a valid class" do
      expect(described_class).to_not be_nil
    end

    context "with invalid attributes" do


      it "should not be valid without title" do
        @post = build(:post, title: "")
        expect(@post.save).to be false
      end
      
       it "should not be valid without description" do
        @post = build(:post, description: "")
        expect(@post.save).to be false
      end
      
      it "should not be valid without category" do
        @post = build(:post, category: "")
        expect(@post.save).to be false
      end
      
      it "should not be valid without user_id" do
        @post = build(:post, user_id: nil)
        expect(@post.save).to be false
      end
  
      it "should not be valid with category length < 2" do
        @post = build(:post, category: "a")
        expect(@post.save).to be false
      end
     

    end

   

  end

end