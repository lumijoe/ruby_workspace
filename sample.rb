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