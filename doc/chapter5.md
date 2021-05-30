## Chapter 5 Notes

- Building non-database models
- Rails models don't have to be backed by a database
  - Apps that serve from memory, constant data, files or REST APIs don’t need a database
  - A directory of JSON files can act like a database table
- `File.split` will split on slashes (Unix or Mac), or backslashes (Windows)
- `MultiJson` has simple JSON encode and decode functionality to and from Ruby hashes
- define square-bracket methods to use Ruby object like a hash
- writing to `ActiveModel` interface can make use of
  - form helpers like `form_for()` directly with models
  - URL helpers for routing
  - model validations
- Caching data models in Ruby
  - the `ActiveRecord` way: object instances are separate on a per-query basis - no sharing
  - the `DataMapper` way: only have one object instance across multiple identical queries - risk race conditions during concurrent access
  - trade-off memory usage vs race conditions (in multi-threaded situations)
  - `ActiveRecord` cache approach scales better to more threads (avoid race conditions) and deeper call stacks, but at the cost of reduced performance (higher memory consumption, garbage collection etc)
- Always define `respond_to_missing?` when overriding `method_missing` - see [reference](https://thoughtbot.com/blog/always-define-respond-to-missing-when-overriding)
