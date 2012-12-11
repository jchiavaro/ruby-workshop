class Lottery
  def play(a, b)
    winner = rand(a..b)
    puts "the winner is..."
    5.times do
      puts "calculating..."
      sleep 1
    end
    puts winner
  end
end

if ARGV.size == 2
  a = ARGV[0].to_i
  b = ARGV[1].to_i
  l = Lottery.new
  l.play(a, b)
else
  puts "Wrong number of arguments: #{ARGV.size} of 2"
end
