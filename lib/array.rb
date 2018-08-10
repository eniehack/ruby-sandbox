p "配列の定義"
nums = [1, 2, 3, 4, 5]
p nums

empty = []
=begin
空の配列を作成
empty = Array.new でも作成可能
=end
p empty

array = Array.new(5, "Hello")
p "全く同じオブジェクトが5つ作られる"
p array

array = Array.new(5) {|index| index}
p "全く違うオブジェクトが5つ作られる"
p array

p "配列の参照"
p nums[0] #配列の1番目を参照
p nums[4] #配列の3番目を参照

p "値のセット"
p array
array[0] = 1
p array

p "値の計算"
array[0] -= 1
p array

p "存在しないインデックスを参照するとnilが返る"
nums[14] = 15
p nums

p "unshiftメソッドで先頭に括弧内の要素を追加する"
nums.unshift(0)
p nums

p "shiftメソッドで括弧内の数字のぶん,要素を取り出す"
element = nums.shift(5)
p element
p nums

p "pushメソッドで末尾に要素を追加する"
nums = Array.new(5) {|i| i}
nums.push(5)
p nums

p "popメソッドで末尾から要素を取り出す"
nums = Array.new(11) {|j| j}
element = nums.pop(5)
p nums
p element

