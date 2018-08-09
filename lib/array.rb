nums = [1, 2, 3, 4, 5] #配列の定義
p nums

empty = []
=begin
空の配列を作成
empty = Array.newでも作成可能
=end
p empty

array = Array.new(5, "Hello")
# 全く同じオブジェクトが5つ作られる
p array

array = Array.new(5) {|index| index}
# 全く違うオブジェクトが5つ作られる