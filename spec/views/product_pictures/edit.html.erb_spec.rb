require 'spec_helper'

describe "product_pictures/edit" do
  before(:each) do
    @product_picture = assign(:product_picture, stub_model(ProductPicture,
      :name => "MyString"
    ))
  end

  it "renders the edit product_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_pictures_path(@product_picture), :method => "post" do
      assert_select "input#product_picture_name", :name => "product_picture[name]"
    end
  end
end
