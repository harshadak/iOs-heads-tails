//: Playground - noun: a place where people can play

import UIKit

// Part I

func tossCoin() -> String {
    print("Tossing a Coin!")
    let result = Int(arc4random_uniform(2))
    if result == 0 {
        let res = "Heads"
        print(res)
        return res
    } else {
        let res = "Tails"
        print(res)
        return res
    }
}
tossCoin()

// Part II

func tossMultipleCoins(Num: Int) -> Double {
    print((Num))
    var count=0
    for _ in 0...Num{
        if tossCoin() == "Heads"{
            print("Heads")
            count+=1
        }
    }
    let ratio = Double(Num)/Double(count)
    return ratio
}
print(tossMultipleCoins(Num: 8))
