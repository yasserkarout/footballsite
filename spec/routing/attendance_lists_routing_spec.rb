require "spec_helper"

describe AttendanceListsController do
  describe "routing" do

    it "routes to #index" do
      get("/attendance_lists").should route_to("attendance_lists#index")
    end

    it "routes to #new" do
      get("/attendance_lists/new").should route_to("attendance_lists#new")
    end

    it "routes to #show" do
      get("/attendance_lists/1").should route_to("attendance_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/attendance_lists/1/edit").should route_to("attendance_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/attendance_lists").should route_to("attendance_lists#create")
    end

    it "routes to #update" do
      put("/attendance_lists/1").should route_to("attendance_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/attendance_lists/1").should route_to("attendance_lists#destroy", :id => "1")
    end

  end
end
