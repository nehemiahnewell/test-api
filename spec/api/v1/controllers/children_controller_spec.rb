require 'rails_helper'
 
RSpec.describe Api::V1::ChildrenController, type: :controller do
  let(:my_child) { Child.create!(first_name: "John", last_name: "Stwert", age: @age, date_of_birth: @dob ) }
 
   describe "endpoints " do
    it "GET index returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
 
    it "GET show returns http success" do
      get :show, id: my_child.id
      expect(response).to have_http_status(:success)
    end

    it "POST create returns http success" do
      post :create, child: {first_name: "John", last_name: "Stwert", age: @age, date_of_birth: @dob }
      expect(response).to have_http_status(201)
    end
 
    it "DELETE destroy returns http success" do
      delete :destroy, id: my_child.id
      expect(response).to have_http_status(200)
    end
    
    it "POST update returns http success" do
      post :update, id: my_child.id, child: {first_name: "John", last_name: "Stwert", age: @age, date_of_birth: @dob }
      expect(response).to have_http_status(200)
    end
  end
end