require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:my_user) { User.create!(username: "TestUserName", email: "test@email.com", password: "password" ) }


  describe "GET #show" do
    it "returns http success" do
      get :show, {id: my_user.id}
      expect(response).to have_http_status(:success)
    end

    it "renders the #show view" do
      get :show, {id: my_user.id}
      expect(response).to render_template :show
    end
  end

end
