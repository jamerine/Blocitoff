require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  let(:my_user) { User.create!(username: "Username", email: "email@domain.com", password: "password")}
  let(:my_item) { Item.create!(name: "New Item", user: my_user )}

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST creat" do
    it "increases the number of Item by 1" do
      expect{post :create, item: {name: "Random Item"}}.to change(Item,:count).by(1)
    end

    it "assigns the new item to @item" do
      post :create, item: {name: "Random Item"}
      expect(assigns(:item)).to eq Item.last
    end

  end

end
