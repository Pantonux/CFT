require 'rails_helper'

describe CommentsController, type: :controller do

  before do
  @user = FactoryBot.create(:user)
  @comment = FactoryBot.create(:comment)
  @product = FactoryBot.create(:product)
  end

describe 'POST #create' do
    context 'when a user is logged in' do
     before do
       sign_in @user
     end

     it 'can create comment' do
       post :create, params: { product_id: @product.id, comment: { body: @comment.body, rating: @comment.rating } }
       expect(response).to have_http_status(302)
     end
   end
 end 
end
