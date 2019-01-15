require 'rails_helper'

describe Comment do
    context "when the product has comments" do
        #let(:user) {User.create!(email:"info@berlin-s-bikes.com", password:"Passwordbsb")}
        let(:product){ Product.create!(name: "Cownie")}
        let(:comment) {Comment.create(user_id: @user.id, product_id: product.id, body: "This is a comment")}

        before do
          @user = FactoryBot.create(:user)
        end


        it "not valid without a rating" do
          comment.rating = nil
          expect(comment).to_not be_valid
        end


        it "not valid without a body" do
          comment.body = nil
          expect(comment).to_not be_valid
        end

        it "not valid without a product" do
          expect(product.comments.new(user_id: @user.id, product_id: nil, body: "Text")).to_not be_valid
        end

        it "not valid without a user" do
          expect(product.comments.new(user_id: nil, product_id: product.id, body: "Text")).to_not be_valid
        end

        it "to be valid with all info" do
          expect(product.comments.new(user_id: @user.id, product_id: product.id, body: "Text", rating:5)).to be_valid
        end
    end
end
