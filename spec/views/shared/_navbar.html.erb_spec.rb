require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  # context "without profile" do
    let(:user) { create :user }

    it "renders email, first and last name, admin" do
      render
      expect(rendered).to have_content user.email
      expect(rendered).to have_content user.first_name
      expect(rendered).to have_content user.last_name
      expect(rendered).to have_content user.admin
    end
  end
