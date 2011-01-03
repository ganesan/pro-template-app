require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe BlogEntriesController do

  def mock_blog_entry(stubs={})
    @mock_blog_entry ||= mock_model(BlogEntry, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all blog_entries as @blog_entries" do
      BlogEntry.stub(:all) { [mock_blog_entry] }
      get :index
      assigns(:blog_entries).should eq([mock_blog_entry])
    end
  end

  describe "GET show" do
    it "assigns the requested blog_entry as @blog_entry" do
      BlogEntry.stub(:find).with("37") { mock_blog_entry }
      get :show, :id => "37"
      assigns(:blog_entry).should be(mock_blog_entry)
    end
  end

  describe "GET new" do
    it "assigns a new blog_entry as @blog_entry" do
      BlogEntry.stub(:new) { mock_blog_entry }
      get :new
      assigns(:blog_entry).should be(mock_blog_entry)
    end
  end

  describe "GET edit" do
    it "assigns the requested blog_entry as @blog_entry" do
      BlogEntry.stub(:find).with("37") { mock_blog_entry }
      get :edit, :id => "37"
      assigns(:blog_entry).should be(mock_blog_entry)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created blog_entry as @blog_entry" do
        BlogEntry.stub(:new).with({'these' => 'params'}) { mock_blog_entry(:save => true) }
        post :create, :blog_entry => {'these' => 'params'}
        assigns(:blog_entry).should be(mock_blog_entry)
      end

      it "redirects to the created blog_entry" do
        BlogEntry.stub(:new) { mock_blog_entry(:save => true) }
        post :create, :blog_entry => {}
        response.should redirect_to(blog_entry_url(mock_blog_entry))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved blog_entry as @blog_entry" do
        BlogEntry.stub(:new).with({'these' => 'params'}) { mock_blog_entry(:save => false) }
        post :create, :blog_entry => {'these' => 'params'}
        assigns(:blog_entry).should be(mock_blog_entry)
      end

      it "re-renders the 'new' template" do
        BlogEntry.stub(:new) { mock_blog_entry(:save => false) }
        post :create, :blog_entry => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested blog_entry" do
        BlogEntry.stub(:find).with("37") { mock_blog_entry }
        mock_blog_entry.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :blog_entry => {'these' => 'params'}
      end

      it "assigns the requested blog_entry as @blog_entry" do
        BlogEntry.stub(:find) { mock_blog_entry(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:blog_entry).should be(mock_blog_entry)
      end

      it "redirects to the blog_entry" do
        BlogEntry.stub(:find) { mock_blog_entry(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(blog_entry_url(mock_blog_entry))
      end
    end

    describe "with invalid params" do
      it "assigns the blog_entry as @blog_entry" do
        BlogEntry.stub(:find) { mock_blog_entry(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:blog_entry).should be(mock_blog_entry)
      end

      it "re-renders the 'edit' template" do
        BlogEntry.stub(:find) { mock_blog_entry(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested blog_entry" do
      BlogEntry.stub(:find).with("37") { mock_blog_entry }
      mock_blog_entry.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the blog_entries list" do
      BlogEntry.stub(:find) { mock_blog_entry }
      delete :destroy, :id => "1"
      response.should redirect_to(blog_entries_url)
    end
  end

end