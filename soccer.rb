# This solution was based on the Claude optimized solution for the weather problem
content = File.readlines('./soccer.dat').select { |line| line.strip.match?(/^\d+\./) }.map(&:split)

parsed = content.map do |line|
  team, goals_for, goals_against = line.values_at(1, 6, 8)
  [team, goals_for.to_i, goals_against.to_i]
end

smallest_goal_diff = parsed.min_by { |_team, goal_for, against| (goal_for - against).abs }

puts "The team with the smallest goals difference is #{smallest_goal_diff[0]}, with #{smallest_goal_diff[2] - smallest_goal_diff[1]} goal(s)"
