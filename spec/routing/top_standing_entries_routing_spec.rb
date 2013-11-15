require "spec_helper"

describe TopStandingEntriesController do
  describe "routing" do

    it "routes to #index" do
      get("/top_standing_entries").should route_to("top_standing_entries#index")
    end

    it "routes to #new" do
      get("/top_standing_entries/new").should route_to("top_standing_entries#new")
    end

    it "routes to #show" do
      get("/top_standing_entries/1").should route_to("top_standing_entries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/top_standing_entries/1/edit").should route_to("top_standing_entries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/top_standing_entries").should route_to("top_standing_entries#create")
    end

    it "routes to #update" do
      put("/top_standing_entries/1").should route_to("top_standing_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/top_standing_entries/1").should route_to("top_standing_entries#destroy", :id => "1")
    end

  end
end
