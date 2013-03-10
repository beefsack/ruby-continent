ruby-continent
==============

[![Build Status](https://travis-ci.org/beefsack/ruby-continent.png)](https://travis-ci.org/beefsack/ruby-continent)

ruby-continent provides a mechanism to get the continent for a given country, or
to get the countries given a continent.  Effort has been made to make the
library very light weight and efficient.

Countries are returned as a hash in the following format:

```ruby
{
  :name => 'Turkey, Republic of',
  :continent_codes => ['EU', 'AS'],
  :alpha_2_code => 'TR',
  :alpha_3_code => 'TUR',
  :numeric_code => 792
}
```

The Turkey example demonstrates how continent codes are given as an array, as
some countries can belong to multiple continents.  Countries which only belong
to one continent are also given as an array.

Functions
---------

### By country

There are a few methods to select a country, based on ISO 3166-1 codes.  These
all return a single country in the format above, or `nil` if not found.

```RUBY
Continent.by_alpha_2_code('AU')
Continent.by_alpha_3_code('AUS')
Continent.by_numeric_code(36)
```

### By continent

The following function takes a continent code and returns an array of countries
in the format above, or nil if the continent is invalid.

```ruby
Continent.by_continent_code('OC')
```

Continent codes and names are defined in `share/continent_names.yml`.

### Getting continent name from a code

There is a helper method to get the continent name from the code, as codes are
used inside the country hashes.

```ruby
Continent.continent_name('OC')
```

### Getting access to the underlying data

Full access to the underlying data is available via `Continent.data`, which is
lazily loaded.

License
-------

Please see COPYING provided with these source files.
