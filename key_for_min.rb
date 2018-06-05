# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  minValue = 0
  name_hash.each_value {|value| minValue = value}
  keyOfMinValue = ""
  if name_hash == {}
    return nil
  else
    name_hash.each do |key, value|
      if minValue > value
        minValue = value
        keyOfMinValue = key
      elsif minValue == value
        minValue = value
        keyOfMinValue = key
      end
    end
    return keyOfMinValue
  end
end
