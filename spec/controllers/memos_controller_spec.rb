require 'spec_helper'

describe MemosController do

  #Delete these examples and add some real ones
  it "should use MemosController" do
    controller.should be_an_instance_of(MemosController)
  end


  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  end
end
