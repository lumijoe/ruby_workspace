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