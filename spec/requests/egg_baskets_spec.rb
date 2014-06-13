require 'rails_helper'

RSpec.describe "EggBaskets", :type => :request do
  describe "GET /egg_baskets" do
    it "works! (now write some real specs)" do
      basket = FactoryGirl.create(:egg_basket)
      basket_id = basket.id
      get egg_baskets_path(format: :json)
      expect(response.status).to be(200)
      expect(JSON.parse(response.body)).to eq(
        [
          {
            'id' => basket_id,
            'egg_count' => '9.99',
            'user_id' => nil,
            'url' => "http://www.example.com/egg_baskets/#{basket_id}.json"
          }
        ])
    end
  end
end
