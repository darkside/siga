require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe AttachmentsController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "attachments", :action => "index").should == "/attachments"
    end
  
    it "should map #new" do
      route_for(:controller => "attachments", :action => "new").should == "/attachments/new"
    end
  
    it "should map #show" do
      route_for(:controller => "attachments", :action => "show", :id => 1).should == "/attachments/1"
    end
  
    it "should map #edit" do
      route_for(:controller => "attachments", :action => "edit", :id => 1).should == "/attachments/1/edit"
    end
  
    it "should map #update" do
      route_for(:controller => "attachments", :action => "update", :id => 1).should == "/attachments/1"
    end
  
    it "should map #destroy" do
      route_for(:controller => "attachments", :action => "destroy", :id => 1).should == "/attachments/1"
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/attachments").should == {:controller => "attachments", :action => "index"}
    end
  
    it "should generate params for #new" do
      params_from(:get, "/attachments/new").should == {:controller => "attachments", :action => "new"}
    end
  
    it "should generate params for #create" do
      params_from(:post, "/attachments").should == {:controller => "attachments", :action => "create"}
    end
  
    it "should generate params for #show" do
      params_from(:get, "/attachments/1").should == {:controller => "attachments", :action => "show", :id => "1"}
    end
  
    it "should generate params for #edit" do
      params_from(:get, "/attachments/1/edit").should == {:controller => "attachments", :action => "edit", :id => "1"}
    end
  
    it "should generate params for #update" do
      params_from(:put, "/attachments/1").should == {:controller => "attachments", :action => "update", :id => "1"}
    end
  
    it "should generate params for #destroy" do
      params_from(:delete, "/attachments/1").should == {:controller => "attachments", :action => "destroy", :id => "1"}
    end
  end
end
