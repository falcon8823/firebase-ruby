require 'spec_helper'

describe "Firebase Api Request" do

  describe "url_builder" do
    before do
      @req = req = Firebase::Api::Request.new 'https://test.firebaseio.com'
    end

    it "should build the correct url when passed no path" do
      @req.build_url(nil).should == 'https://test.firebaseio.com/.json'
    end

    it "should build the correct url when passed a path" do
      req = Firebase::Api::Request.new 'https://test.firebaseio.com'

      @req.build_url('users/eugene').should == 'https://test.firebaseio.com/users/eugene.json'
    end
  end
end
