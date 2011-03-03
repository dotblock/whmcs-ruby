module WHMCS
  # WHMCS::Order is the class for managing orders
  class Order < Base

    # Create a new order
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - client id for order
    # * <tt>:pid</tt> - product id
    # * <tt>:domain</tt> - domain name
    # * <tt>:billingcycle</tt> - onetime, monthly, quarterly, semiannually, etc..
    # * <tt>:addons</tt> - comma seperated list of addon ids
    # * <tt>:customfields</tt> - a base64 encoded serialized array of custom field values
    # * <tt>:configoptions</tt> - a base64 encoded serialized array of configurable product options
    # * <tt>:domaintype</tt> - set for domain registration - register or transfer
    # * <tt>:regperiod</tt> - 1,2,3,etc...
    # * <tt>:dnsmanagement</tt> - true to enable
    # * <tt>:emailforwarding</tt> - true to enable
    # * <tt>:idprotection</tt> - true to enable
    # * <tt>:eppcode</tt> - if transfer
    # * <tt>:nameserver1</tt> - first nameserver (req for domain reg only)
    # * <tt>:nameserver2</tt> - second nameserver
    # * <tt>:nameserver3</tt> - third nameserver
    # * <tt>:nameserver4</tt> - fourth nameserver
    # * <tt>:paymentmethod</tt> - paypal, authorize, etc...
    # * <tt>:promocode</tt> - pass coupon code to apply to the order (optional)
    # * <tt>:affid</tt> - affiliate ID if you want to assign the order to an affiliate (optional)
    # * <tt>:noinvoice</tt> - set true to not generate an invoice for this order
    # * <tt>:noemail</tt> - set true to surpress the order confirmation email
    # * <tt>:clientip</tt> - can be used to pass the customers IP (optional)
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Add_Order
    def self.add_order(params = {})
      params.merge!(:action => 'addorder')
      send_request(params)
    end

    # Get orders
    #
    # Parameters:
    #
    # * <tt>:limitstart</tt> - The record number to start at (default = 0)
    # * <tt>:limitnum</tt> - The number of order records to return (default = 25)
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Orders
    def self.get_orders(params = {})
      params.merge!(:action => 'getorders')
      send_request(params)
    end

    # Get products
    #
    # Parameters:
    #
    # * <tt>:pid</tt> - can be used to just retrieve the details of a specific product ID
    # * <tt>:gid</tt> - can be passed to just retrieve products in a specific group
    # * <tt>:module</tt> - can be passed to just retrieve products assigned to a specific module
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Products
    def self.get_products(params = {})
      params.merge!(:action => 'getproducts')
      send_request(params)
    end

    # Get promotions
    #
    # Parameters:
    #
    # * <tt>:code</tt> - the specific promotion code to return information for (optional)
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Promotions
    def self.get_promotions(params = {})
      params.merge!(:action => 'getpromotions')
      send_request(params)
    end

    # Get order statuses
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Order_Statuses
    def self.get_order_statuses
      params.merge!(:action => 'getorderstatuses')
      send_request(params)
    end

    # Accept an order
    #
    # Parameters:
    #
    # * <tt>:orderid</tt> - the Order ID
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Accept_Order
    def self.accept_order(params = {})
      params.merge!(:action => 'acceptorder')
      send_request(params)
    end

    # Place an order in pending
    #
    # Parameters:
    #
    # * <tt>:orderid</tt> - the Order ID
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Pending_Order
    def self.pending_order(params = {})
      params.merge!(:action => 'pendingorder')
      send_request(params)
    end

    # Cancel an order
    #
    # Parameters:
    #
    # * <tt>:orderid</tt> - the Order ID
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Cancel_Order
    def self.cancel_order(params = {})
      params.merge!(:action => 'cancelorder')
      send_request(params)
    end

    # Mark an order as fraud
    #
    # Parameters:
    #
    # * <tt>:orderid</tt> - the Order ID
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Fraud_Order
    def self.fraud_order(params = {})
      params.merge!(:action => 'fraudorder')
      send_request(params)
    end

    # Delete an order
    #
    # Parameters:
    #
    # * <tt>:orderid</tt> - the Order ID
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Delete_Order
    def self.delete_order(params = {})
      params.merge!(:action => 'deleteorder')
      send_request(params)
    end
  end
end
