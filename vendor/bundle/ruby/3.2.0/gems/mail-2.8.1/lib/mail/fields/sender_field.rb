# encoding: utf-8
# frozen_string_literal: true
require 'mail/fields/common_address_field'

module Mail
  # = Sender Field
  #
  # The Sender field inherits sender StructuredField and handles the Sender: header
  # field in the email.
  #
  # Sending sender to a mail message will instantiate a Mail::Field object that
  # has a SenderField as its field type.  This includes all Mail::CommonAddress
  # module instance metods.
  #
  # Only one Sender field can appear in a header, though it can have multiple
  # addresses and groups of addresses.
  #
  # == Examples:
  #
  #  mail = Mail.new
  #  mail.sender = 'Mikel Lindsaar <mikel@test.lindsaar.net>'
  #  mail.sender    #=> 'mikel@test.lindsaar.net'
  #  mail[:sender]  #=> '#<Mail::Field:0x180e5e8 @field=#<Mail::SenderField:0x180e1c4
  #  mail['sender'] #=> '#<Mail::Field:0x180e5e8 @field=#<Mail::SenderField:0x180e1c4
  #  mail['Sender'] #=> '#<Mail::Field:0x180e5e8 @field=#<Mail::SenderField:0x180e1c4
  #
  #  mail[:sender].encoded   #=> "Sender: Mikel Lindsaar <mikel@test.lindsaar.net>\r\n"
  #  mail[:sender].decoded   #=> 'Mikel Lindsaar <mikel@test.lindsaar.net>'
  #  mail[:sender].addresses #=> ['mikel@test.lindsaar.net']
  #  mail[:sender].formatted #=> ['Mikel Lindsaar <mikel@test.lindsaar.net>']
  class SenderField < CommonAddressField #:nodoc:
    NAME = 'Sender'

    def self.singular?
      true
    end

    def default
      address
    end

    def addresses
      Array(super.first)
    end
  end
end
