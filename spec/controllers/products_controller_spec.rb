require File.dirname(__FILE__) + '/../spec_helper'

describe ProductsController do
  fixtures :all
  render_views

  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when model is invalid" do
    Product.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    Product.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(products_url)
  end
end
