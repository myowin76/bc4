require "spec_helper"

describe Admin::CompaniesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/companies").to route_to("admin/companies#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/companies/new").to route_to("admin/companies#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/companies/1").to route_to("admin/companies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/companies/1/edit").to route_to("admin/companies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/companies").to route_to("admin/companies#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/companies/1").to route_to("admin/companies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/companies/1").to route_to("admin/companies#destroy", :id => "1")
    end

  end
end
