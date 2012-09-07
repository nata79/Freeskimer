# Freeskimer

Saves and retrieves model attributes to your database with no schema. It simply serializes the object to JSON at save time and desirializes it upon retrieval.

## Installation

Add this line to your application's Gemfile:

```ruby
  gem 'freeskimer'
```

And then execute:

    $ bundle

## Usage

Call `freeskim` in an ActiveRecord class and pass the name of the attribute you wish to save and the name of the column where it should be saved (has to be a string type).

```ruby
class Key < ActiveRecord::Base
  freeskim :numbers , to: :abstract_key
  freeskim :stars   , to: :abstract_key
end
```

This will automatically save the attributes 'numbers' and 'stars' in json format in the 'abstract_key' column.

## Development

Questions or problems? Please post them on the [issue tracker](https://github.com/nata79/freeskimer/issues). You can contribute changes by forking the project and submitting a pull request. You can ensure the tests passing by running `bundle` and `rake`.

This gem is created by Ryan Bates and is under the MIT License.
