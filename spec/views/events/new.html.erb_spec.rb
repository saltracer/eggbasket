require 'rails_helper'

RSpec.describe "events/new", :type => :view do
  before(:each) do
    assign(:event, Event.new(
      :egg_basket => nil,
      :cost => 1.5,
      :event_name => nil
    ))
  end

  it "renders new event form" do
    render

    assert_select "form[action=?][method=?]", events_path, "post" do

      assert_select "input#event_egg_basket_id[name=?]", "event[egg_basket_id]"

      assert_select "input#event_cost[name=?]", "event[cost]"

      assert_select "input#event_event_name_id[name=?]", "event[event_name_id]"
    end
  end
end
