module WHMCS
  # WHMCS::Module is the class for working with hosting account modules
  class Module < Base

    # Run the module create command
    #
    # Parameters:
    #
    # * <tt>:accountid</tt> - the unique id number of the account in the tblhosting table
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Module_Create
    def self.module_create(params = {})
      params.merge!(:action => 'modulecreate')
      send_request(params)
    end

    # Run the module suspend command
    #
    # Parameters:
    #
    # * <tt>:accountid</tt> - the unique id number of the account in the tblhosting table
    # * <tt>:suspendreason</tt> - an explanation of why the suspension has been made shown to clients & staff
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Module_Suspend
    def self.module_suspend(params = {})
      params.merge!(:action => 'modulesuspend')
      send_request(params)
    end

    # Run the module unsuspend command
    #
    # Parameters:
    #
    # * <tt>:accountid</tt> - the unique id number of the account in the tblhosting table
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Module_Unsuspend
    def self.module_unsuspend(params = {})
      params.merge!(:action => 'moduleunsuspend')
      send_request(params)
    end

    # Run the module terminate command
    #
    # Parameters:
    #
    # * <tt>:accountid</tt> - the unique id number of the account in the tblhosting table
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Module_Terminate
    def self.module_terminate(params = {})
      params.merge!(:action => 'moduleterminate')
      send_request(params)
    end
  end
end
