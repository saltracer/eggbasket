require 'rails_helper'

RSpec.describe "egg_baskets/new", :type => :view do
  before(:each) do
    assign(:egg_basket, EggBasket.new(
      :egg_count => "9.99",
      :user => nil
    ))
  end

  it "renders new egg_basket form" do
    render

    assert_select "form[action=?][method=?]", egg_baskets_path, "post" do

      assert_select "input#egg_basket_egg_count[name=?]", "egg_basket[egg_count]"

      assert_select "input#egg_basket_user_id[name=?]", "egg_basket[user_id]"
    end
  end
end
