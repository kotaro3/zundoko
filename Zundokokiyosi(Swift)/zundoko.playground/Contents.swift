//: Playground - noun: a place where people can play

import UIKit


import Foundation

// ズンドコを列挙
enum ズンドコ:UInt32 { case ズン,ドコ }

// ズンドコパターン定数を設定
let expected = [ズンドコ.ズン, .ズン, .ズン, .ズン, .ドコ]

// 出てきたズンドコを入れる配列
var list:[ズンドコ] = []

// ズン、ズンズン、ズンドコできたら出力
while(list.suffix(5) != expected.suffix(5)) {
    // ランダムに取得
    let val = ズンドコ(rawValue: arc4random_uniform(2))!
    print(val)
    // ランダムに出てきたズンドコを追加する
    list.append(ズンドコ(rawValue: val.rawValue)!)
}
print("キ・ヨ・シ！")
