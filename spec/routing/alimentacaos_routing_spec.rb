require "spec_helper"

describe AlimentacaosController do
  describe "routing" do

    it "routes to #index" do
      get("/alimentacaos").should route_to("alimentacaos#index")
    end

    it "routes to #new" do
      get("/alimentacaos/new").should route_to("alimentacaos#new")
    end

    it "routes to #show" do
      get("/alimentacaos/1").should route_to("alimentacaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alimentacaos/1/edit").should route_to("alimentacaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alimentacaos").should route_to("alimentacaos#create")
    end

    it "routes to #update" do
      put("/alimentacaos/1").should route_to("alimentacaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alimentacaos/1").should route_to("alimentacaos#destroy", :id => "1")
    end

  end
end
