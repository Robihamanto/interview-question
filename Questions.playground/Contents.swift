import Foundation
import UIKit


// 0 1 1 2 3 5 8 13 21 34 55

func findFibonacci(n: Int) -> Int {
    
    if n == 0 || n == 1 {
        return n
    }
    
    var num1 = 0
    var num2 = 1
    
    for _ in 2 ... n {
        let nextNum = num1 + num2
        num1 = num2
        num2 = nextNum
    }
    
    return num2
}

findFibonacci(n: 7)


func findFibonacciRecursive(n: Int) -> Int {
    
    if n < 2 {
        return n
    }
    
    return findFibonacciRecursive(n: n-1) + findFibonacciRecursive(n: n-2)
}


findFibonacciRecursive(n: 7)
