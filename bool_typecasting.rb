# String Class ('')
class String
  def to_bool
    return false if self == false || self.blank? || self =~ (
      /^(false|f|no|n|0)$/i)
    return true if self == true || self =~ (/^(true|t|yes|y|1)$/i)
    fail ArgumentError.new('invalid value for Boolean:', "\"#{self}\"")
  end
end

# True Class (true)
class TrueClass
  def to_bool
    self
  end

  def to_i
    1
  end
end

# False Class (false)
class FalseClass
  def to_bool
    self
  end

  def to_i
    0
  end
end

# Fixnum Class (123)
class Fixnum
  def to_bool
    return false if self == 0
    return true if self == 1
    fail ArgumentError.new('invalid value for Boolean:', "\"#{self}\"")
  end
end

# Nil Class (nil)
class NilClass
  def to_bool
    false
  end
end
