require 'rails_helper'

RSpec.describe "events/edit", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :egg_basket => nil,
      :cost => 1.5,
      :event_name => nil
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input#event_egg_basket_id[name=?]", "event[egg_basket_id]"

      assert_select "input#event_cost[name=?]", "event[cost]"

      assert_select "input#event_event_name_id[name=?]", "event[event_name_id]"
    end
  end
end
