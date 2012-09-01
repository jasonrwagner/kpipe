require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :image_url => "MyString"
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => services_path, :method => "post" do
      assert_select "input#service_name", :name => "service[name]"
      assert_select "textarea#service_description", :name => "service[description]"
      assert_select "input#service_price", :name => "service[price]"
      assert_select "input#service_image_url", :name => "service[image_url]"
    end
  end
end
