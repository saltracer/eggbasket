require 'rails_helper'

RSpec.describe "EggClutches", :type => :request do
  describe "GET /egg_clutches" do
    it "works! (now write some real specs)" do
      get egg_clutches_path
      expect(response.status).to be(200)
    end
  end
end
