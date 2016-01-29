require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:user) { User.create!(username: "Username", email: "email@domain.com", password: "password")}
  let(:item) { Item.create!(name: "New Item", user: user)}

  describe "attributes" do
    it "should respond to title" do
      expect(item).to respond_to(:name)
    end
  end
end
