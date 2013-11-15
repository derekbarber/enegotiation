require "spec_helper"

describe TopStandingsController do
  describe "routing" do

    it "routes to #index" do
      get("/top_standings").should route_to("top_standings#index")
    end

    it "routes to #new" do
      get("/top_standings/new").should route_to("top_standings#new")
    end

    it "routes to #show" do
      get("/top_standings/1").should route_to("top_standings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/top_standings/1/edit").should route_to("top_standings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/top_standings").should route_to("top_standings#create")
    end

    it "routes to #update" do
      put("/top_standings/1").should route_to("top_standings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/top_standings/1").should route_to("top_standings#destroy", :id => "1")
    end

  end
end
