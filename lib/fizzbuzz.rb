def fizzbuzz(n)
    if n % 15 == 0
        "FizzBuzz"
    elsif n % 3 == 0
        "Fizz"
    elsif n % 5 == 0
        "Buzz"
    else
        n.to_s
        # 文字列に変換して返す
    end
end