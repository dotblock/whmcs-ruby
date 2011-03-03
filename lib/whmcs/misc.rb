module WHMCS
  # The WHMCS::Misc class contains miscelaneous WHMCS API functions
  class Misc < Base

    # Perform a whois lookup for a domain name
    #
    # Parameters:
    #
    # * <tt>:domain</tt> - the domain to check
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Domain_WHOIS
    def self.domain_whois(params = {})
      params.merge!(:action => 'domainwhois')
      send_request(params)
    end

    # Get activity log
    #
    # Parameters:
    #
    # * <tt>:limitstart</tt> - Which User ID to start at (default = 0)
    # * <tt>:limitnum</tt> - Limit by number (default = 25)
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Activity_Log
    def self.get_activity_log(params = {})
      params.merge!(:action => 'getactivitylog')
      send_request(params)
    end

    # Get administrator details
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Admin_Details
    def self.get_admin_details
      send_request(:action => 'getadmindetails')
    end

    # Update administrator notes
    #
    # Parameters:
    #
    # * <tt>:notes</tt> - notes to enter
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Admin_Notes
    def self.update_admin_notes(params = {})
      params.merge!(:action => 'updateadminnotes')
      send_request(params)
    end

    # Get allowed currencies
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Currencies
    def self.get_currencies
      send_request(:action => 'getcurrencies')
    end

    # Get promotions
    #
    # Note: WHMCS has this listed under Misc as well as invoices. It's
    # aliased here for consistancy with their API docs
    #
    # Parameters:
    #
    # * <tt>:code</tt> - the specific promotion code to return information for (optional)
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Promotions
    def self.get_promotions(params = {})
      Invoice.get_promotions(params)
    end

    # Get email templates
    #
    # Parameters:
    #
    # * <tt>:type</tt> - optional - from product,domain,support,general,invoice,affiliate
    # * <tt>:language</tt> - optional - only required for additional languages
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Email_Templates
    def self.get_email_templates(params = {})
      params.merge!(:action => 'getemailtemplates')
      send_request(params)
    end

    # Get todo items
    #
    # Parameters:
    #
    # * <tt>:status</tt> - optional - from New,Pending,In Progress,Completed,Postponed
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_To-Do_Items
    def self.get_todo_items(params = {})
      params.merge!(:action => 'gettodoitems')
      send_request(params)
    end

    # Get configured todo item statuses
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_To-Do_Items_Statuses
    def self.get_todo_item_statuses
      send_request(:action => 'gettodoitemstatuses')
    end

    # Get staff online
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Staff_Online
    def self.get_staff_online
      send_request(:action => 'getstaffonline')
    end

    # Get stats
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Stats
    def self.get_stats
      send_request(:action => 'getstats')
    end

    # Encrypt a password with the WHMCS algorithm
    #
    # Parameters:
    #
    # * <tt>:password2</tt> - should contain the string you want encrypting
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Encrypt_Password
    def self.encrypt_password(params = {})
      params.merge!(:action => 'encryptpassword')
      send_request(params)
    end

    # Decrypt a string with the WHMCS algorithm
    #
    # NOTE: This cannot be used to decrypt the clients password.
    #
    # Parameters:
    #
    # * <tt>:password2</tt> - should contain the string you want decrypting
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Decrypt_Password
    def self.decrypt_password(params = {})
      params.merge!(:action => 'decryptpassword')
      send_request(params)
    end
  end
end
