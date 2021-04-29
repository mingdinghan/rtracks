# Rtracks
Rtracks is an MVC web framework that is a smaller version of Ruby on Rails, built from scratch by following the excellent book [Rebuilding Rails](https://rebuilding-rails.com) by Noah Gibbs ([@codefolio](https://twitter.com/codefolio))

### Run

```bash
bundle exec rackup -p 3001
```
Point browser to `http://localhost:3001`
Example: `http://localhost:3001/quotes/quote`

### Test

```bash
rake test

# verbose
rake test TESTOPTS="--verbose"
```
