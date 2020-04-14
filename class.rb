class Store
    def self.welcome
        "いらっしゃいませ"
    end


    def initialize
        @products = []
    end

    def name
        @name = "takeyy商店"
    end

    def buy(product)
        @products.push(product)
        puts "#{product}を購入"
    end

    def confirm
        if @products.length == 0
            return puts "購入した商品はありません"
        end
        @products.each do |product|
            puts "購入した商品は#{product}です"
        end
    end
end

puts Store.welcome

store = Store.new

puts "1の商店名は#{store.name}です"

store.confirm
store.buy("coca_cola")
store.buy("pepsi_cola")
store.buy("calpis")
store.confirm