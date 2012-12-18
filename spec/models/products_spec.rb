require File.dirname(__FILE__) + '/../spec_helper'

describe Products do
  it "should be valid" do
    Products.new.should be_valid
  end
end
