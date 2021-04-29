## Chapter 2 Notes

- `const_get` looks up any name starting with a capital letter
- `LOAD_PATH` allows loading files by directory path, just by requiring their name
- `#{env}` contains everything that the application gets from Rack, e.g. `env["REQUEST_METHOD"]`
  - everything that the web framework knows about the HTTP request can be extracted from this hash
