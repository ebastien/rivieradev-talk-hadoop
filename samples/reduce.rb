#!/usr/bin/env ruby
key, sum = nil, 0
STDIN.each do |row|
  k, v = row.split "\t"
  if key != k
    STDOUT.puts "#{key}\t#{sum}" if key
    key, sum = k, 0
  end
  sum += v.to_i
end
STDOUT.puts "#{key}\t#{sum}" if key
