require 'rails_helper'

RSpec.describe "egg_baskets/show", :type => :view do
  before(:each) do
    @egg_basket = assign(:egg_basket, EggBasket.create!(
      :egg_count => "9.99",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
