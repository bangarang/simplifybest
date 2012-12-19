require "spec_helper"

describe ProductPicturesController do
  describe "routing" do

    it "routes to #index" do
      get("/product_pictures").should route_to("product_pictures#index")
    end

    it "routes to #new" do
      get("/product_pictures/new").should route_to("product_pictures#new")
    end

    it "routes to #show" do
      get("/product_pictures/1").should route_to("product_pictures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/product_pictures/1/edit").should route_to("product_pictures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/product_pictures").should route_to("product_pictures#create")
    end

    it "routes to #update" do
      put("/product_pictures/1").should route_to("product_pictures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/product_pictures/1").should route_to("product_pictures#destroy", :id => "1")
    end

  end
end
