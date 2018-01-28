func fib(nth: Int) {
    
    if nth == 0 {
        print("0"); return
    }
    var sum = 0;
    var f1 = 0;
    var f2 = 1;
    
    var n = nth
    
    while n > 0 {
        sum = f1 + f2
        f1 = f2
        f2 = sum
        n -= 1
    }
    
    print("sum at \(nth) = \(sum)")
    
}

fib(nth: 5)