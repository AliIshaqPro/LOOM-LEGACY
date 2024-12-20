# CHANGELOG

## Version 1.2.9 / 2020-08-31
* Avoid warning on uninitialized instance variable (#188)
* Bump rack to 2.2.3 (#190)
* Remove Gemfile.lock
* Resolve outstanding TODO entries (#179)
* A bunch of gem structure cleanup (thanks @olleolleolle)
* Set winning strategy when :warden is thrown (#174)
* Bump rack dependency to >= 2.0.9 due to CVEs

## Version 1.2.8 / 2018-11-15

* Bugfix: Flips two lines to allow scopes authenticating from another without stepping on each other's toes. (PR #144)
* Update `rack` dependency to >= 2.0.6 due to security vulnerability
* Internal: Add Rubocop Lint checking
* Internal: Update RSpec to use `.rspec` file

## Version 1.2.7 / 2016-10-12

* Added 'frozen_string_literal' comment, bump ruby to 2.3

## Version 1.2.6 / 2016-01-31

* Separate test helpers to encapsulate Warden object mocking inside it's own class

## Version 1.2.5 / 2016-01-28

* Expands on the test helpers available to make it easier for testing gems

## Version 1.2.3 / 2013-07-14

* Fix an issue with lazy loaded sessions

## Version 1.2.2 / 2013-07-12

* Support nil session stores on logout
* Fix strategies blowing up with undefined method base

## Version 1.2.1 / 2012-06-16

* Minor caching and speed improvements
* Add support to #lock in the proxy
* Add support to after_failed_fetch callback

## Version 1.2.0 / 2012-05-08

* Deprecate warden_cookies since it was never functional
* Add support to serialize_from_session and serialize_into_session per scope

## Version 1.1.1 / 2012-02-16

* Allow run_callbacks as an option to set_user and user

## Version 1.1.0 / 2011-11-02

* Use the default scopes action when using a bare throw(:warden)

## Version 1.0.6

* Remove gem files from the packaged gem

## Version 1.0.3

* Do not renew session on user fetch

## Version 1.0.2

* Added :intercept_401 to Warden::Config

## Version 1.0.1

* Bug fix on strategies errors handler

## Version 1.0.0

* Bump!
* Allow strategies to configure if user should be stored or not
* Force session id renewal when user is set

## Version 0.10.7

* Performance boost. config object to use raw accessors
* Add per strategy storage option

## Version 0.10.6 / 0.10.7 / 2010-05-22

* Bugfix set_user was not respecting logouts in hooks

## Version 0.10.4 / 0.10.5 / 2010-05-20
* Add action specifying in scope_defaults

## Version 0.10.3 / 2010-03-01
* Bugfix prevent halted winning strategy from being skipped in subsequent runs

## Version 0.10.2 / 2010-03-26
* Halt on fail!.  Add fail to allow cascading
* cache the winning strategy
* Make the config object Dupable

## Version 0.10.1 / 2010-03-23
* Merge previous from master
* tag

## Version 0.10.0 / 2010-03-22
* Allow default strategies to be set on the proxy
* Provide each scope with it's own default strategies
* Provide each scope with default set_user opts
* depricate the Proxy#default_strategies= method

## Version 0.9.5 / 2010-02-28

* Add Warden.test_mode!
* Add Warden.on_next_request
* Add test helpers in Warden::Test::Helpers
** login_as
** logout

## Version 0.9.4 / 2010-02-23

* Fix an issue where winning_strategy was not cleaned, allowing multiple scopes to sign in, even when the second one should not

## Version 0.9.3 / 2010-02-17

* Add prepend_ to all hooks (josevalim)

## Version 0.9.2 / 2010-02-10

* Ruby 1.9 compatibility changes (grimen)

## Version 0.9.1 / 2010-02-09

* Support for passing a custom message with Warden::Strategy::Base#success! as second optional (grimen)

## Version 0.9.0 / 2010-01-21

* Remove serializers and make strategies more powerful, including cache behavior (josevalim)

## Version 0.8.1 / 2010-01-06

* Fix a bug when silence missing serializers is set (josevalim)

## Version 0.8.0 / 2010-01-06

* enhancements
  * Add conditionals to callbacks (josevalim)
  * Extract Warden::Config from Warden::Manager (josevalim)

## Version 0.7.0 / 2010-01-04

* enhancements
  * Expose config in warden proxy (hassox)

## Version 0.6.0 / 2009-11-16

* enhancements
  * added serializers, including session serializer (set by default) and a cookie serializer (josevalim)

* deprecation
  * serializer_into_session and serializer_from_session are deprecated, overwrite serialize and deserializer in Warden::Serializers::Session instead (josevalim)

## Version 0.5.3 / 2009-11-10

* bug fixes
  * authenticated? and unauthenticated? should return true or false, not the user or false. (hassox)

## Version 0.5.2 / 2009-11-09

* enhancements
  * authenticated? always try to serialize the user from session (josevalim)
  * stored_in_session? checks if user information is stored in session, without serializing (josevalim)
  * 401 behaves exactly like throw :warden (staugaard)

## Version 0.5.1 / 2009-10-25

* enhancements
  * Adds yielding to authenticated? and unauthenticated? methods (hassox)
  * Adds an option to silence missing strategies (josevalim)
  * Add an option to authenticate(!) to prevent storage of a user into the session (hassox)
  * allow custom :action to be thrown (josevalim)

## Version 0.4.0 / 2009-10-12

* enhancements
  * add Content-Type header to redirects (staugaard)
  * Make scope available to strategies (josevalim)

* bug fixes
  * Do not consume opts twice, otherwise just the first will parse the scope (josevalim)

## Version 0.3.2 / 2009-09-15

* enhancements
  * add a hook for plugins to specify how they can clear the whole section
