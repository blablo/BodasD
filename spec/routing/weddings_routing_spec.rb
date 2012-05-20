require "spec_helper"

describe WeddingsController do
  describe "routing" do

    it "routes to #index" do
      get("/weddings").should route_to("weddings#index")
    end

    it "routes to #new" do
      get("/weddings/new").should route_to("weddings#new")
    end

    it "routes to #show" do
      get("/weddings/1").should route_to("weddings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weddings/1/edit").should route_to("weddings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weddings").should route_to("weddings#create")
    end

    it "routes to #update" do
      put("/weddings/1").should route_to("weddings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weddings/1").should route_to("weddings#destroy", :id => "1")
    end

  end
end
