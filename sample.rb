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