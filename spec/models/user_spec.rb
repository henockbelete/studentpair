require 'rails_helper'

RSpec.describe User, type: :model do

  describe "admin" do
    it "checks if user is admin for :admin" do

      user = User.new
      user.admin = true
      expect(user.admin).to eq(true)
    end
end
end
