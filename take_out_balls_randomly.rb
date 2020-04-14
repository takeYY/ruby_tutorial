### 方法1 ###
puts "Method 1"
puts "============"
#require 'bigdecimal'

class Ball
    def initialize(name,color)
        @name = name
        @color = color
        @count = 0
    end
    
    def name
        @name
    end
    
    def color
        @color
    end
    
    def add_count
        @count = @count + 1
    end
    
    def calc_percent(total)
        percent = ( @count.to_f / total.to_f ) * 100
        #BigDecimal(percent.to_s).floor(1).to_f
        percent.round(1)
    end
end
  
red = Ball.new("赤",0)
blue = Ball.new("青",1)
black = Ball.new("黒",2)
green = Ball.new("緑",3)
yellow = Ball.new("黄",4)

ball_kinds = 5
total = 1000

total.times do |i|
    rand_num = Random.rand(ball_kinds)

    if red.color <= rand_num && rand_num < blue.color
        red.add_count
    elsif blue.color <= rand_num && rand_num < black.color
        blue.add_count
    elsif black.color <= rand_num && rand_num < green.color
        black.add_count
    elsif green.color <= rand_num && rand_num < yellow.color
        green.add_count
    else
        yellow.add_count
    end
end

balls = [red,blue,black,green,yellow]

ball_kinds.times do |color|
    ball_color = balls[color]
    puts "#{ball_color.name}玉: #{ball_color.calc_percent(total)}%"
end








### 方法2 ###
puts ""
puts "Method 2"
puts "============"

def calc_percent(count,total)
	percent = (count.to_f / total.to_f ) * 100
    percent.round(1)
end

balls = ["赤玉","青玉","黒玉","緑玉","黄玉"]
counter = [0,0,0,0,0]
red = 0
blue = 1
black = 2
green = 3
yellow = 4
ball_kinds = 5
total = 1000

(1..1000).each do |i|
    pick_up = balls.sample
    if pick_up == "赤玉"
        counter[red] += 1
    elsif pick_up == "青玉"
        counter[blue] += 1
    elsif pick_up == "黒玉"
        counter[black] += 1
    elsif pick_up == "緑玉"
        counter[green] += 1
    else
        counter[yellow] += 1
    end
end

ball_kinds.times do |index|
    ball_color = balls[index]
    puts "#{ball_color}: #{calc_percent(counter[index],total)}%"
end
