require 'rails_helper'

RSpec.describe "egg_clutches/new", :type => :view do
  before(:each) do
    assign(:egg_clutch, EggClutch.new(
      :count => "9.99",
      :egg_basket => nil
    ))
  end

  it "renders new egg_clutch form" do
    render

    assert_select "form[action=?][method=?]", egg_clutches_path, "post" do

      assert_select "input#egg_clutch_count[name=?]", "egg_clutch[count]"

      assert_select "input#egg_clutch_egg_basket_id[name=?]", "egg_clutch[egg_basket_id]"
    end
  end
end
