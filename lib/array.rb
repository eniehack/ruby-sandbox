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


