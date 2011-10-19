#!/usr/bin/env ruby
STDIN.each do |line|
  line.scan(/\w+/) do |word|
    STDOUT.puts "#{word}\t1"
  end
end
