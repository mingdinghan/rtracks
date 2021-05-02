## Chapter 5 Notes

- Building non-database models
- Rails models don't have to be backed by a database
  - Apps that serve from memory, constant data, files or REST APIs don’t need a database
  - A directory of JSON files can act like a database table
- `File.split` will split on slashes (Unix or Mac), or backslashes (Windows)
- `MultiJson` has simple JSON encode and decode functionality to and from Ruby hashes
- define square-bracket methods to use Ruby object like a hash
