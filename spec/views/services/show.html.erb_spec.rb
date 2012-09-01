require 'spec_helper'

describe "services/show" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :name => "Name",
      :description => "MyText",
      :price => "9.99",
      :image_url => "Image Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/Image Url/)
  end
end
