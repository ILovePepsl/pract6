def ipv4?(ipv)
  parts = ipv.split('.')
  return false if parts.length != 4
  parts.each do |part|
    return false if part.empty? || part.length > 3
    return false if part =~ /\D/ || part.to_i < 0 || part.to_i > 255
    return false if part[0] == '0' && part.length > 1
  end
  true
end

puts ipv4?('14.88.0.200')
