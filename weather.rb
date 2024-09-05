# My solution
input = File.read('./w_data.dat')
arr = input.lines.map(&:split)[6..-2]
day = ''
last_spread = arr[0][1].to_i - arr[0][2].to_i

arr.each do |line|
  spread = line[1].to_i - line[2].to_i
  if spread < last_spread.to_i
    last_spread = spread
    day = line[0]
  end
end

puts "Smallest weather spread is day #{day}"

# Solution optimized by Claude 3.5 Sonnet
# # Read file content
# input = File.read('./w_data (1).dat')

# # Parse data, skipping header and footer
# data = input.lines[6..-2].map do |line|
#   day, max, min = line.split.values_at(0, 1, 2)
#   [day, max.to_i, min.to_i]
# end

# # Calculate spreads and find the smallest
# smallest_spread = data.min_by { |_day, max, min| max - min }

# # Output result
# puts "Smallest weather spread is day #{smallest_spread[0]} with #{smallest_spread[1] - smallest_spread[2]} degrees"
