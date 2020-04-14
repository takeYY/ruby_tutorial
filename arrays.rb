animals = ["猫","犬","狐","烏"]
animals.each do |animal|
    puts animal
end

#データ型を出力
p animals

animals.push("蛇")

p animals

i = 1
if animals[i] == "犬"
    puts (i+1).to_s + "番目は犬"
end

animals.each do |animal|
    next if animal == "犬"
        puts animal
    break if animal == "烏"
        puts animal
end

5.times do |i|
    if i == 1
        break
    else
        puts i
    end
end