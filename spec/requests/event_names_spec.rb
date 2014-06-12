require 'rails_helper'

RSpec.describe "EventNames", :type => :request do
  describe "GET /event_names" do
    it "works! (now write some real specs)" do
      get event_names_path
      expect(response.status).to be(200)
    end
  end
end
