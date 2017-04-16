//: Playground - noun: a place where people can play

import UIKit

/*****************1.continue******************/
let input = "Hello Swift~"
var ouput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in input.characters {
    if charactersToRemove.contains(character) {
        continue
    } else {
        ouput.append(character)
    }
}

print(ouput)
//打印结果：HllSwft~

/*******************2.break*******************/
let input2 = "我是一条语句"
let keywords:Character = "一"
var count = 0

for chara in input.characters {
    count += 1
    if(chara == keywords){
        print("找到了")
        break;
    }
}
print("循环执行了\(count)次")
//打印结果：
//找到了
//循环执行了3次


let num = 5
var bigChineseNum = ""

switch num {
case 1:
    bigChineseNum = "壹"
case 2:
    bigChineseNum = "贰"
case 3:
    bigChineseNum = "叁"
case 4:
    bigChineseNum = "肆"
case 5:
    bigChineseNum = "伍"
case 6:
    bigChineseNum = "陆"
default:
    break
}
print(bigChineseNum)
//打印结果：伍


/*****************3.fallthrough***************/
let integerToDescribe = 5
var description = " \(integerToDescribe)是一个"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += "质数，同时也是一个"
    fallthrough
default:
    description += "正整数。"
}
print(description)
// 打印结果： 5是一个质数，同时也是一个正整数。
