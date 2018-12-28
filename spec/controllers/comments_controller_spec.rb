require 'rails_helper'

describe CommentsController, type: :controller do

  let(:user) {User.create!(email:"info@berlin-s-bikes.com", password:"Passwordsbs")}
  let(:product){ Product.create!(name: "Cownie")}

    context 'when a user is logged in' do
     before do
       sign_in user
     end

     it 'can create comment' do
       post :create, params: { product_id: product.id, comment: { body: "cool", rating: 5 } }
       expect(response).to have_http_status(302)
     end
   end
  end
