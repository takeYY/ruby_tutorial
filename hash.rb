money_region = "円"
goods = {
    coca_cola: 150,
    weekly_shonen_jump: 300,
    calpis: 150
}

puts :coca_cola.to_s + "の料金は" + goods[:calpis].to_s + money_region

goods[:coca_cola] = 200
p goods

goods[:green_tea] = 100
p goods

goods.delete(:weekly_shonen_jump)
p goods

goods.each do |key,value|
    puts "==========================================="
    puts "#{key}の料金は#{value}#{money_region}です。"
end