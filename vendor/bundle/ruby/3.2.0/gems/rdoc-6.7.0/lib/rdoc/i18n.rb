# frozen_string_literal: true
##
# This module provides i18n related features.

module RDoc::I18n

  autoload :Locale, "#{__dir__}/i18n/locale"
  require_relative 'i18n/text'

end
