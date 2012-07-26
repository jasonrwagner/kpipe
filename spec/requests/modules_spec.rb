require 'spec_helper'

describe "Modules" do
  describe "GET /modules" do
     it "display some modules" do
     	visit modules_path
     	page.should have_content 'module'
    end
  end
end
