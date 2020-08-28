1. download google service account json file and create .fog file in ~/ + specify google_json_key_location: under default: in .fog
2. open rails console
3. Try if this works:

```ruby
connection = Fog::Compute::Google.new(:google_project => "delegate")
```


# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
