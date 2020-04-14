wallet = 1500
whether = "rainy"
if wallet >= 500
    if whether == "sunny"
        puts "コンビニ弁当"
    else
        puts "ピザの出前"
    end
else
    puts "自炊"
end

if wallet < 500 && whether == "storm"
    puts "danger"
end

if wallet < 500 || whether == "thunder"
    puts "stay Home"
end

5.times do |i|
    puts "#{i}回目"
end