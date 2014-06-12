require 'rails_helper'

RSpec.describe "egg_clutches/show", :type => :view do
  before(:each) do
    @egg_clutch = assign(:egg_clutch, EggClutch.create!(
      :count => "9.99",
      :egg_basket => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(//)
  end
end
