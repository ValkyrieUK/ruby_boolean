ruby_boolean
============

Typecast support for booleans in Ruby

```ruby
# Numbers...
1.to_bool # => true
0.to_bool # => false

# Numbers as strings...
'1'.to_bool # => true
'0'.to_bool # => false

# Truthy strings (case insensitive)...
'true'.to_bool  # => true  (alias: 't')
'false'.to_bool # => false (alias: 'f')
'yes'.to_bool   # => false (alias: 'y')
'no'.to_bool    # => false (alias: 'n')

# Booleans...
true.to_bool  # => true
false.to_bool # => false

# Nil...
nil.to_bool # => false
```
