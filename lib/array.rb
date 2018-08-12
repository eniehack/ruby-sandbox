# 配列の定義
nums = [1, 2, 3, 4, 5]
p nums

empty = [] # 空の配列を作成
# empty = Array.new でも作成可能
p empty

array = Array.new(5, "Hello")
# 全く同じオブジェクトが5つ作られる
p array

array = Array.new(5) {|index| index}
# 全く違うオブジェクトが5つ作られる
p array

# 配列の参照
p nums[0] # 配列の1番目を参照
p nums[4] # 配列の3番目を参照

# 値のセット"
p array
array[0] = 1
p array

# 値の計算
array[0] -= 1
p array

# 存在しないインデックスを参照するとnilが返る
nums[14] = 15
p nums

# unshiftメソッドで先頭に括弧内の要素を追加する
nums.unshift(0)
p nums

# shiftメソッドで括弧内の数字のぶん,要素を取り出す
element = nums.shift(5)
p element
p nums

# pushメソッドで末尾に要素を追加する
nums = Array.new(5) {|i| i}
nums.push(5)
p nums

# popメソッドで末尾から要素を取り出す
nums = Array.new(5) {|j| j}
element = nums.pop(5)
p nums
p element

# 多重代入
a, b = [1, 2] # aに1,bに2は代入される
c, d = [3] # 右辺が少ない場合にはnilが返る
e, f = [4, 5, 6] # 右辺が多い場合ははみ出た値が捨てられる

g = 14.divmod(3) # divmodメソッドは商と余りを配列に多重代入するメソッド

# ブロック
number = [1, 2, 3, 4, 5]
sum = 0
number.each do |n|
    sum += n
end

=begin
eachメソッド=配列自体に繰り返す機能がついていてforを使う必要がない
eachメソッドは配列の最初から最後までの要素を取り出す機能
取り出した要素の扱いはdoとendの中、または{}(=ブロック)で定義する
|n|のnはブロック引数といい、eachメソッドから渡された配列の要素が入る
=end

p sum

# 要素の削除
num1 = [1, 2, 2, 3]
num1.delete(2) #値が2の要素を削除
p num1

num2 = [1, 2, 2, 3, 4]
num2.delete_if do |n|
    n.odd? # 配列から奇数の要素を削除する
end
p num2

=begin
delete_ifメソッドも配列の要素を順番に取り出してブロックに渡す
戻り値が真であればブロックに渡した要素を配列から削除する
odd?メソッドは数値が奇数の場合、真になる
num2.delete_if { |n| n.odd? } としても同じ動作をする
=end

# mapメソッド(エイリアスメソッドはcollect)
numbers = [1, 2, 3, 4, 5, 6]
p number
new_number = numbers.map { |n| n * 10 }
# mapメソッドは各要素に対しブロックを評価した新しい配列を作成する
p new_number

# selectメソッド(エイリアスメソッドはfind_all)
even_numbers = numbers.select { |n| n.even? }
# selectメソッドは各要素に対しブロックを評価し、その戻り値が真の要素を集めた配列を作成する
p even_numbers

odd_numbers = numbers.reject { |n| n.odd?}
# rejectメソッドはselectとは逆に偽の要素を集めた要素を作成する