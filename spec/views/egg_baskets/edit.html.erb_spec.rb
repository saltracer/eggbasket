require 'rails_helper'

RSpec.describe "egg_baskets/edit", :type => :view do
  before(:each) do
    @egg_basket = assign(:egg_basket, EggBasket.create!(
      :egg_count => "9.99",
      :user => nil
    ))
  end

  it "renders the edit egg_basket form" do
    render

    assert_select "form[action=?][method=?]", egg_basket_path(@egg_basket), "post" do

      assert_select "input#egg_basket_egg_count[name=?]", "egg_basket[egg_count]"

      assert_select "input#egg_basket_user_id[name=?]", "egg_basket[user_id]"
    end
  end
end
