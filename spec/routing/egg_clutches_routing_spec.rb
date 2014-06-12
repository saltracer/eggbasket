require "rails_helper"

RSpec.describe EggClutchesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/egg_clutches").to route_to("egg_clutches#index")
    end

    it "routes to #new" do
      expect(:get => "/egg_clutches/new").to route_to("egg_clutches#new")
    end

    it "routes to #show" do
      expect(:get => "/egg_clutches/1").to route_to("egg_clutches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/egg_clutches/1/edit").to route_to("egg_clutches#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/egg_clutches").to route_to("egg_clutches#create")
    end

    it "routes to #update" do
      expect(:put => "/egg_clutches/1").to route_to("egg_clutches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/egg_clutches/1").to route_to("egg_clutches#destroy", :id => "1")
    end

  end
end
