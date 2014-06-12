require 'rails_helper'

RSpec.describe "event_names/index", :type => :view do
  before(:each) do
    assign(:event_names, [
      EventName.create!(
        :name => "Name"
      ),
      EventName.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of event_names" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
