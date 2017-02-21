require "rails_helper"

RSpec.describe AccountingYearsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/accounting_years").to route_to("accounting_years#index")
    end

    it "routes to #new" do
      expect(:get => "/accounting_years/new").to route_to("accounting_years#new")
    end

    it "routes to #show" do
      expect(:get => "/accounting_years/1").to route_to("accounting_years#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/accounting_years/1/edit").to route_to("accounting_years#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/accounting_years").to route_to("accounting_years#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/accounting_years/1").to route_to("accounting_years#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/accounting_years/1").to route_to("accounting_years#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/accounting_years/1").to route_to("accounting_years#destroy", :id => "1")
    end

  end
end
