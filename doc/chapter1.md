## Chapter 1 Notes

- Add runtime dependencies `rack`, `rack-test`, `minitest`.
- Rack is a gem to interface a web framework to a Ruby application server such as Thin, Puma, Passenger, WEBrick or Unicorn.
- `gemspec` is evaluated by apps and libraries that depend on this gem, so it’s necessary if other apps use this library.
- By explicitly prepending to the load path, ensure that the local version of the gem code is used first
  - so it doesn't matter what gem version has been installed on this machine

### Initialize

```bash
bundle gem rtracks
cd rtracks
```

### Build

```bash
gem build rtracks.gemspec
gem install rtracks-0.0.1.gem
```

### Run

```bash
bundle exec rackup -p 3001
```
Point browser to `http://localhost:3001`

### Test

```bash
rake test

# verbose
rake test TESTOPTS="--verbose"
```

### References

- GitHub article: [Generating a new SSH key and adding it to the ssh-agent](https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
