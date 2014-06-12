require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      :egg_basket => nil,
      :cost => 1.5,
      :event_name => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(//)
  end
end
