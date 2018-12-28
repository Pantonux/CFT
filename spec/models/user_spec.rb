require 'rails_helper'

describe User do
  let(:user) {User.create!(password:"Passwordbsb", email:"info@berlin-s-bikes.com")}

  it "it is a valid email" do
   expect(user.email).to eq "info@berlin-s-bikes.com"
 end

 it "it is a valid password" do
  expect(user.password).to eq "Passwordbsb"
end

it "it is not valid without an email" do
user.email = nil
 expect(user).to_not be_valid
end
end
