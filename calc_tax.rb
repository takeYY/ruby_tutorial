puts "金額を入力してください!"
money = gets.chomp.to_i     #chompは改行コードの入力を削除
tax_percent = 0.08
result = ( money * (1+tax_percent) ).to_i
puts result