require File.dirname(__FILE__) + '/test_helper.rb'

class WHMCSTest < Test::Unit::TestCase
  context "WHMCS::Base.send_request" do

    should "raise an error if params[:action] is not set" do
      assert_raise RuntimeError do
        WHMCS::Base.send_request
      end
    end

    should "return a hash" do
      res = WHMCS::Client.get_clients_details(:clientid => '1')
      assert res.is_a?(Hash)
    end
  end
end
