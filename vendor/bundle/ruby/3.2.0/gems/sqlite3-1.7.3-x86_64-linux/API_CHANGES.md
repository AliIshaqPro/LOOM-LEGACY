# API Changes

* SQLite3::Database#execute only accepts an array for bind parameters.

* SQLite3::ResultSet used to query the database for the first row, regardless
  of whether the user asked for it or not.  I have removed that so that rows
  will not be returned until the user asks for them.  This is a subtle but
  sometimes important change in behavior.

  83882d2208ed189361617d5ab8532a325aaf729d

* SQLite3::Database#trace now takes either a block or an object that responds
  to "call".  The previous implementation passed around a VALUE that was cast
  to a void *.  This is dangerous because the value could get garbage collected
  before the proc was called.  If the user wants data passed around with the
  block, they should use variables available to the closure or create an
  object.

* SQLite3::Statement#step automatically converts to ruby types, where before
  all values were automatically yielded as strings.  This will only be a
  problem for people who were accessing information about the database that
  wasn't previously passed through the pure ruby conversion code.

* SQLite3::Database#errmsg no longer takes a parameter to return error
  messages as UTF-16.  Do people even use that?  I opt for staying UTF-8 when
  possible.  See test_integration.rb test_errmsg_utf16

* SQLite3::Database#authorize same changes as trace

* test/test_tc_database.rb was removed because we no longer use the Driver
  design pattern.

# Garbage Collection Strategy

All statements keep pointers back to their respective database connections.
The @connection instance variable on the Statement handle keeps the database
connection alive.  Memory allocated for a statement handler will be freed in
two cases:

* close is called on the statement
* The SQLite3::Database object gets garbage collected

We can't free the memory for the statement in the garbage collection function
for the statement handler.  The reason is because there exists a race
condition.  We cannot guarantee the order in which objects will be garbage
collected.  So, it is possible that a connection and a statement are up for
garbage collection.  If the database connection were to be free'd before the
statement, then boom.  Instead we'll be conservative and free unclosed
statements when the connection is terminated.
