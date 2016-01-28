require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create!(username: "Blocitoff User", email: "amerine.19@gmail.com", password: "password")}
  # Shoulda tests for name
  it { should validate_presence_of(:username) }
  it { should validate_length_of(:username).is_at_least(1) }

  # Shoulda tests for email
  it { should validate_presence_of(:email) }
end
