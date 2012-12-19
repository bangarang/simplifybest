require 'spec_helper'

describe "product_pictures/new" do
  before(:each) do
    assign(:product_picture, stub_model(ProductPicture,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new product_picture form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => product_pictures_path, :method => "post" do
      assert_select "input#product_picture_name", :name => "product_picture[name]"
    end
  end
end
