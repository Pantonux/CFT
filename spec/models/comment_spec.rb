require 'rails_helper'

describe Comment do
    context "when the product has comments" do
        let(:user) {User.create!(email:"info@berlin-s-bikes.com", password:"Passwordbsb")}
        let(:product){ Product.create!(name: "Cownie")}
        let(:comment) {Comment.create(user_id: user.id, product_id: product.id, body: "This is a comment")}

        it "not valid without a rating" do
          comment.rating = nil
          expect(comment).to_not be_valid
        end
    end
end
