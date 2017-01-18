require 'dig_nested_hash/version'

Hash.class_eval do
  def swap_nested_value(key, value)
    store(key, value) if key?(key)
    each do |_k, v|
      v.swap_nested_value(key, value) if v.is_a?(Hash)
      v.each do |h|
        h.swap_nested_value(key, value) if h.is_a?(Hash)
      end if v.is_a?(Array)
    end
  end
end
