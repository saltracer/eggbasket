require 'rails_helper'

RSpec.describe "egg_clutches/index", :type => :view do
  before(:each) do
    assign(:egg_clutches, [
      EggClutch.create!(
        :count => "9.99",
        :egg_basket => nil
      ),
      EggClutch.create!(
        :count => "9.99",
        :egg_basket => nil
      )
    ])
  end

  it "renders a list of egg_clutches" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
