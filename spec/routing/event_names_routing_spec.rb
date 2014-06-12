require "rails_helper"

RSpec.describe EventNamesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_names").to route_to("event_names#index")
    end

    it "routes to #new" do
      expect(:get => "/event_names/new").to route_to("event_names#new")
    end

    it "routes to #show" do
      expect(:get => "/event_names/1").to route_to("event_names#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_names/1/edit").to route_to("event_names#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_names").to route_to("event_names#create")
    end

    it "routes to #update" do
      expect(:put => "/event_names/1").to route_to("event_names#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_names/1").to route_to("event_names#destroy", :id => "1")
    end

  end
end
