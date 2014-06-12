require 'rails_helper'

RSpec.describe "event_names/new", :type => :view do
  before(:each) do
    assign(:event_name, EventName.new(
      :name => "MyString"
    ))
  end

  it "renders new event_name form" do
    render

    assert_select "form[action=?][method=?]", event_names_path, "post" do

      assert_select "input#event_name_name[name=?]", "event_name[name]"
    end
  end
end
