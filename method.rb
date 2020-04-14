def put_sum(a,b)
    puts a + b
end

def sum(a,b)
    # returnを用いても良い
    a + b
end

def balance(money)
    if money < 0
        return "マイナス"
    end
    money.to_s + "円"
end

put_sum(100,23)
total = sum(1,23)
puts total

puts "所持金は#{balance(12300)}です"