require 'rails_helper'

RSpec.describe "event_names/edit", :type => :view do
  before(:each) do
    @event_name = assign(:event_name, EventName.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit event_name form" do
    render

    assert_select "form[action=?][method=?]", event_name_path(@event_name), "post" do

      assert_select "input#event_name_name[name=?]", "event_name[name]"
    end
  end
end
