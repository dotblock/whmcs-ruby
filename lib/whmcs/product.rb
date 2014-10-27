module WHMCS
  class Product < Base

    # Finds products
    #
    # Parameters:
    #
    # * <tt>:pid</tt> - the ID of the individual package to retrieve
    # * <tt>:gid</tt> - the group you want to find packages in
    # * <tt>:module</tt> - the module whose packages you're interested in
    #
    # See:
    #
    # http://docs.whmcs.com/API:Get_Products
    def self.get_products(params = {})
      params.merge!(:action => 'getproducts')
      send_request(params)
    end
  end
end
