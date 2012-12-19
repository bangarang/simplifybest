require 'spec_helper'

describe "product_pictures/show" do
  before(:each) do
    @product_picture = assign(:product_picture, stub_model(ProductPicture,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
