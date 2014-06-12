require 'rails_helper'

RSpec.describe "events/index", :type => :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        :egg_basket => nil,
        :cost => 1.5,
        :event_name => nil
      ),
      Event.create!(
        :egg_basket => nil,
        :cost => 1.5,
        :event_name => nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
