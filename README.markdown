# whmcs-ruby

whmcs-ruby provides Ruby bindings for the [WHMCS API](http://wiki.whmcs.com/API:Functions).


## Usage

    require 'whmcs'

    WHMCS.configure do |config|
      config.api_url      = 'http://example.com/includes/api.php'
      config.api_username = 'someusername'
      config.api_password = 'c4ca4238a0b923820dcc509a6f75849b' # md5 hash
    end

    WHMCS::Client.get_clients_details(:clientid => '1')

See the [documentation](http://dotblock.github.com/whmcs-ruby/) for more
details.


## Installation

    gem install whmcs-ruby


## Copyright

Copyright (c) 2011 DotBlock.com, see LICENSE in this repo for details.
