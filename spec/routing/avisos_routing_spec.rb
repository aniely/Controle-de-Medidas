require "spec_helper"

describe AvisosController do
  describe "routing" do

    it "routes to #index" do
      get("/avisos").should route_to("avisos#index")
    end

    it "routes to #new" do
      get("/avisos/new").should route_to("avisos#new")
    end

    it "routes to #show" do
      get("/avisos/1").should route_to("avisos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/avisos/1/edit").should route_to("avisos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/avisos").should route_to("avisos#create")
    end

    it "routes to #update" do
      put("/avisos/1").should route_to("avisos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/avisos/1").should route_to("avisos#destroy", :id => "1")
    end

  end
end
