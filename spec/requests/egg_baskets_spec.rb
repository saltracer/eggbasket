require 'rails_helper'

RSpec.describe "EggBaskets", :type => :request do
  describe "GET /egg_baskets" do
    it "works! (now write some real specs)" do
      get egg_baskets_path
      expect(response.status).to be(200)
    end
  end
end
