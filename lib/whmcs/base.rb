require 'net/http'
require 'net/https'
require 'crack'

module WHMCS
  # WHMCS::Base is the main class used to subclass WHMCS API resources
  class Base

    # Sends an API request to the WHMCS API
    #
    # Parameters:
    # * <tt>:action</tt> - The API action to perform
    #
    # All other paramters are passed along as HTTP POST variables
    def self.send_request(params = {})
      if params[:action].blank?
        raise "No API action set"
      end

      params.merge!(
        :username => WHMCS.config.api_username,
        :password => WHMCS.config.api_password
      )

      url = URI.parse(WHMCS.config.api_url)

      http = Net::HTTP.new(url.host, url.port)

      if url.port == 443
        http.use_ssl = true
      end

      req = Net::HTTP::Post.new(url.path)
      req.set_form_data(params)

      res = http.start { |http| http.request(req) }
      parse_response(res.body)
    end

    # Converts the API response to a Hash
    def self.parse_response(raw)
      return {} if raw.to_s.blank?

      if raw.match(/xml version/)
        Crack::XML.parse(raw)
      else
        Hash[raw.split(';').map { |line| line.split('=') }]
      end
    end
  end
end

# Fix Net::HTTP so we dont get
# warning: peer certificate won't be verified in this SSL session
#
# See:
#
# http://www.5dollarwhitebox.org/drupal/node/64
module Net #:nodoc:all
  class HTTP
    alias_method :old_initialize, :initialize

    def initialize(*args)
      old_initialize(*args)
      @ssl_context = OpenSSL::SSL::SSLContext.new
      @ssl_context.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end
  end
end
