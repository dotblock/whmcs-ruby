module WHMCS
  # WHMCS::Ticket is the class for managing support tickets
  class Ticket < Base

    # Open a new ticket
    #
    # Parameters:
    #
    # * <tt>:clientid</tt> - the ID of the client the ticket belongs to
    # * <tt>:name</tt> - only required if not a registered client (clientid must be sent as 0)
    # * <tt>:email</tt> - only required if not a registered client
    # * <tt>:deptid</tt> - the ID of the ticket department
    # * <tt>:subject</tt>
    # * <tt>:message</tt>
    # * <tt>:priority</tt> - can be "Low", "Medium" or "High"
    # * <tt>:serviceid</tt> - the ID if the ticket relates to a specific product
    # * <tt>:customfields</tt> - a base 64 serialized array of field IDs => values
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Open_Ticket
    def self.open_ticket(params = {})
      params.merge!(:action => 'openticket')
      send_request(params)
    end

    # Reply to ticket
    #
    # Parameters:
    #
    # * <tt>:ticketid</tt> - the ID of the ticket to add the reply to
    # * <tt>:clientid</tt> - if adding reply as a client
    # * <tt>:name</tt> - only required if not a registered client (clientid must be sent as 0)
    # * <tt>:email</tt> - only required if not a registered client
    # * <tt>:adminusername</tt> - if adding reply as an admin, name to show
    # * <tt>:message</tt>
    # * <tt>:status</tt> - specify if you want to set the status to On Hold or In Progress after reply
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Reply_Ticket
    def self.reply_ticket(params = {})
      params.merge!(:action => 'addticketreply')
      send_request(params)
    end

    # Get tickets
    #
    # Parameters:
    #
    # * <tt>:limitstart</tt> - Optional start at which result (default 0)
    # * <tt>:limitnum</tt> - Optional limit at how many results (default 25)
    # * <tt>:clientid</tt> - Optional search for a particular client's tickets
    # * <tt>:deptid</tt> - Optional search in a particular department
    # * <tt>:status</tt> - Optional search a particular status
    # * <tt>:subject</tt> - Optional search for a word in the subject
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Tickets
    def self.get_tickets(params = {})
      params.merge!(:action => 'gettickets')
      send_request(params)
    end

    # Get a ticket
    #
    # Parameters:
    #
    # * <tt>:ticketid</tt> - Ticket id to retrieve
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Ticket
    def self.get_ticket(params = {})
      params.merge!(:action => 'getticket')
      send_request(params)
    end

    # Update an existing ticket
    #
    # Parameters:
    #
    # * <tt>:ticketid</tt> - Ticket ID to be updated
    # * <tt>:subject</tt>
    # * <tt>:priority</tt> - Low, Medium or High
    # * <tt>:status</tt> - Open, Answered, Closed, etc...
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Update_Ticket
    def self.update_ticket(params = {})
      params.merge!(:action => 'updateticket')
      send_request(params)
    end

    # Add a note to an existing ticket
    #
    # Parameters:
    #
    # * <tt>:ticketid</tt> - Ticket ID the note is to be added
    # * <tt>:message</tt> - The not to add
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Add_Ticket_Note
    def self.add_ticket_note(params = {})
      params.merge!(:action => 'addticketnote')
      send_request(params)
    end

    # Delete an existing ticket
    #
    # Parameters:
    #
    # * <tt>:ticketid</tt> - Ticket ID to be deleted
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Delete_Ticket
    def self.delete_ticket(params = {})
      params.merge!(:action => 'deleteticket')
      send_request(params)
    end

    # Get support departments
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Support_Departments
    def self.get_support_departments
      send_request(:action => 'getsupportdepartments')
    end

    # Get support statuses
    #
    # Parameters:
    #
    # * <tt>:deptid</tt> - Optional - Send a Department ID to limit results
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Support_Statuses
    def self.get_support_statuses(params = {})
      params.merge!(:action => 'getsupportstatuses')
      send_request(params)
    end

    # Get ticket predefined categories
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Ticket_Predefined_Cats
    def self.get_ticket_predefined_cats
      send_request(:action => 'getticketpredefinedcats')
    end

    # Get ticket predefined replies
    #
    # Parameters:
    #
    # * <tt>:catid</tt> - Optional Select category to browse
    #
    # See:
    #
    # http://wiki.whmcs.com/API:Get_Ticket_Predefined_Replies
    def self.get_ticket_predefined_repies(params = {})
      params.merge!(:action => 'getsupportstatuses')
      send_request(params)
    end
  end
end