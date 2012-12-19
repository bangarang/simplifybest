require 'spec_helper'

describe "product_pictures/index" do
  before(:each) do
    assign(:product_pictures, [
      stub_model(ProductPicture,
        :name => "Name"
      ),
      stub_model(ProductPicture,
        :name => "Name"
      )
    ])
  end

  it "renders a list of product_pictures" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
