require 'rails_helper'

RSpec.describe "event_names/show", :type => :view do
  before(:each) do
    @event_name = assign(:event_name, EventName.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
