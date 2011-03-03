module WHMCS
  # WHMCS::Quote is the class for managing quotes
  class Quote < Base

    # Create a new quote
    #
    # Parameters:
    #
    # * <tt>:userid</tt> - the unique id number of the client in the tblclients table
    # * <tt>:firstname</tt> - optional - only required if userid is not specified
    # * <tt>:lastname</tt> - optional - only required if userid is not specified
    # * <tt>:companyname</tt> - optional - only required if userid is not specified
    # * <tt>:email</tt> - optional - only required if userid is not specified
    # * <tt>:address1</tt> - optional - only required if userid is not specified
    # * <tt>:address2</tt> - optional - only required if userid is not specified
    # * <tt>:city</tt> - optional - only required if userid is not specified
    # * <tt>:state</tt> - optional - only required if userid is not specified
    # * <tt>:postcode</tt> - optional - only required if userid is not specified
    # * <tt>:country</tt> - optional - only required if userid is not specified
    # * <tt>:phonenumber</tt> - optional - only required if userid is not specified
    # * <tt>:currency</tt> - optional - only required if userid is not specified
    # * <tt>:subject</tt> - Subject of the quote
    # * <tt>:stage</tt> - Draft,Delivered,On Hold,Accepted,Lost,Dead
    # * <tt>:validuntil</tt> - In format set in Localisation
    # * <tt>:datecreated</tt> - Optional - In format set in Localisation
    # * <tt>:customernotes</tt> - notes that are viewable by the client
    # * <tt>:adminnotes</tt> - notes that are admin only
    # * <tt>:lineitems</tt> - a base64 encoded serialized array containing:
    # * <tt>:desc</tt> - The line description
    # * <tt>:qty</tt> - The quantity being quoted
    # * <tt>:up</tt> - unit price
    # * <tt>:discount</tt> - discount amount in %
    # * <tt>:taxable</tt> - true or false
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Create_Quote
    def self.create_quote(params = {})
      params.merge!(:action => 'createquote')
      send_request(params)
    end

    # Update an existing quote
    #
    # Parameters:
    #
    # * <tt>:quoteid</tt> - the id number of the quote in tblquotes
    # * <tt>:userid</tt> - the unique id number of the client in the tblclients table
    # * <tt>:firstname</tt> - optional - only required if userid is not specified
    # * <tt>:lastname</tt> - optional - only required if userid is not specified
    # * <tt>:companyname</tt> - optional - only required if userid is not specified
    # * <tt>:email</tt> - optional - only required if userid is not specified
    # * <tt>:address1</tt> - optional - only required if userid is not specified
    # * <tt>:address2</tt> - optional - only required if userid is not specified
    # * <tt>:city</tt> - optional - only required if userid is not specified
    # * <tt>:state</tt> - optional - only required if userid is not specified
    # * <tt>:postcode</tt> - optional - only required if userid is not specified
    # * <tt>:country</tt> - optional - only required if userid is not specified
    # * <tt>:phonenumber</tt> - optional - only required if userid is not specified
    # * <tt>:currency</tt> - optional - only required if userid is not specified
    # * <tt>:subject</tt> - Subject of the quote
    # * <tt>:stage</tt> - Draft,Delivered,On Hold,Accepted,Lost,Dead
    # * <tt>:validuntil</tt> - In format set in Localisation
    # * <tt>:datecreated</tt> - Optional - In format set in Localisation
    # * <tt>:customernotes</tt> - notes that are viewable by the client
    # * <tt>:adminnotes</tt> - notes that are admin only
    # * <tt>:lineitems</tt> - a base64 encoded serialized array containing:
    # * <tt>:id</tt> - existing lineid only required to update existing lines
    # * <tt>:desc</tt> - The line description
    # * <tt>:qty</tt> - The quantity being quoted
    # * <tt>:up</tt> - unit price
    # * <tt>:discount</tt> - discount amount in %
    # * <tt>:taxable</tt> - true or false
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Quote
    def self.update_quote(params = {})
      params.merge!(:action => 'updatequote')
      send_request(params)
    end

    # Delete a quote
    #
    # Parameters:
    #
    # * <tt>:quoteid</tt> - the id number of the quote in tblquotes
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Delete_Quote
    def self.delete_quote(params = {})
      params.merge!(:action => 'deletequote')
      send_request(params)
    end

    # Send a quote to client
    #
    # Parameters:
    #
    # * <tt>:quoteid</tt> - the id number of the quote in tblquotes
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Send_Quote
    def self.send_quote(params = {})
      params.merge!(:action => 'sendquote')
      send_request(params)
    end

    # Accept a quote
    #
    # Parameters:
    #
    # * <tt>:quoteid</tt> - the id number of the quote in tblquotes
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Accept_Quote
    def self.accept_quote(params = {})
      params.merge!(:action => 'acceptquote')
      send_request(params)
    end
  end
end
