#　関数の定義
def greet(message)
    puts message
end
# 関数の呼び出し
greet("Heelo World")


def add(a, b)
    return a + b
end

puts add(3, 4)


def greet(calc)
    puts calc
end

greet(3 + 4)

# Rubyは関数がダブっても実行タイミングが上からされる＝そのものが表示される（CSSとは違う）

# 用語の整理：
# 関数（function）:
# def add(a, b)     # ← addが関数名
#   return a + b
# end
# キーワード（keyword）:
# def      # 関数を定義するキーワード
# return   # 値を返すキーワード
# if       # 条件分岐のキーワード
# end      # 終了のキーワード
# 引数（argument）:
# def add(a, b)     # ← a, bが引数
# 演算子（operator）:
# a + b     # ← +が演算子（計算する記号）
# returnの役割：
# def calculate(x, y)
#   result = x * 2 + y
#   return result    # ← "resultの値を外に渡す"
# end

# answer = calculate(3, 4)  # ← answerには10が入る
# つまり：

# add = 関数
# return = キーワード（値を返す命令）
# a + b = 計算（演算）

# returnは「計算結果を外に渡すための命令」

def multiply(x, y)
   return x * y
end
puts multiply(2, 3) 


def square(num)
    return num * num
end

puts square(5)


# 専門用語で整理：
# 仮引数（パラメータ）:
# rubydef greet(message)    # ← message = 仮引数（箱の名前）
# 実引数（アーギュメント）:
# rubygreet("Hello World")  # ← "Hello World" = 実引数（実際の値）
# あなたの言葉で言い換えると：

# message = 引数の入れ物（仮の名前）
# "Hello World" = 実際に渡す値（詳細な内容）

# 流れ：

# 定義時：messageという「入れ物」を用意
# 呼び出し時："Hello World"という「実際の値」を入れ物に入れる
# 実行時：入れ物の中身（"Hello World"）を使用

def cashier(price1, price2)
    puts price1 + price2
end


cashier(100, 200)

def cashier(price1, price2)
    tax_rate_a = 1.1
    puts (price1 + price2) * tax_rate_a
end

cashier(100, 200)


# (price1 + price2) * 1.1.floorのように書くのはNG
# 1.1.floorが先に計算されてしまい、計算結果がおかしくなるので、必ず計算後のものをfloorするように！
def cashier(price1, price2)
    puts ((price1 + price2) * 1.1).floor
end

cashier(100, 200)

def cashier(p, r)
    puts (p + r)
end
cashier(20, 10)

def cashier(prices)
    p prices
end

cashier([100, 200, 300])


def cashier(prices)
    prices.each do |price|
        puts price
    end
end

cashier([100, 200, 300])


def cashier(prices)
    sum = 0
    prices.each do |price|
        sum += price
    end
    puts sum
end

cashier([100, 200, 300])

# 違うコードNG例
# def cashier(prices)
#     sum = 0
#     prices.each do |price|
#         ((sum += price) * 1.1).floor
#     end
#     puts (sum + "円")
# end
# cashier([100, 200, 300])
def cashier(prices)
    sum = 0
    prices.each do |price|
        sum += price
    end
    puts "#{(sum * 1.1).floor}円"
end

cashier([100, 200, 300])

# レストランの注文システムを作ってください。
# 関数名は restaurant_bill
# 引数は料理の価格が入った配列
# 各料理の価格を合計する
# 合計にサービス料15%を加算する
# 小数点以下は切り上げ（.ceilを使用）
# 「合計: ◯◯円」の形で表示する
# 呼び出し例：
# rubyrestaurant_bill([800, 1200, 500])
# 期待する出力：
# 合計: 2875円

def rubyrestaurant_bill(prices)
    sum = 0
    prices.each do |price|
        sum += price
    end
    puts "#{(sum * 1.1).ceil}円"
end
rubyrestaurant_bill([800, 1200, 500])

def rubyrestaurant_bill(prices)
    sum = 0
    tax = 1.15
    prices.each do |price|
        sum += price
    end
    puts "#{(sum * tax).ceil}円"
end
rubyrestaurant_bill([800, 1200, 500])


# ハッシュ
# hash = {}
# hash = { "key1" => "value1", "key2" => "value2" }

# hash = { "name" => "Alice", "age" => "30" }
# puts hash["name"]
# puts hash["age"]
# puts hash

# hash = { "name" => "Alice" }
# hash["age"] = 30
# hash["name"] = "Bob"
# puts hash

# シンボルをキーとする
# student = { name: "Alice", age:30 }
# puts student[:name]
# puts student[:age]

# イテレーション
hash = { name: "Alice", age: 30 }
hash.each do |key, value|
    puts "#{key}: #{value}"
end
