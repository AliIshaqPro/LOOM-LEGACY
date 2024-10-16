# frozen_string_literal: true

module Loofah
  module HTML5 # :nodoc:
    #
    #  Subclass of Nokogiri::HTML5::DocumentFragment.
    #
    #  See Loofah::ScrubBehavior and Loofah::TextBehavior for additional methods.
    #
    class DocumentFragment < Nokogiri::HTML5::DocumentFragment
      include Loofah::TextBehavior
      include Loofah::HtmlFragmentBehavior
    end
  end
end
