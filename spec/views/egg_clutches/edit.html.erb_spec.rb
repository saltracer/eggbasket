require 'rails_helper'

RSpec.describe "egg_clutches/edit", :type => :view do
  before(:each) do
    @egg_clutch = assign(:egg_clutch, EggClutch.create!(
      :count => "9.99",
      :egg_basket => nil
    ))
  end

  it "renders the edit egg_clutch form" do
    render

    assert_select "form[action=?][method=?]", egg_clutch_path(@egg_clutch), "post" do

      assert_select "input#egg_clutch_count[name=?]", "egg_clutch[count]"

      assert_select "input#egg_clutch_egg_basket_id[name=?]", "egg_clutch[egg_basket_id]"
    end
  end
end
