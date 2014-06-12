require 'rails_helper'

RSpec.describe "egg_baskets/index", :type => :view do
  before(:each) do
    assign(:egg_baskets, [
      EggBasket.create!(
        :egg_count => "9.99",
        :user => nil
      ),
      EggBasket.create!(
        :egg_count => "9.99",
        :user => nil
      )
    ])
  end

  it "renders a list of egg_baskets" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
