//
//  Modul1.swift
//  iOSDevelopment
//
//  Created by Pavel Ivanov on 3/11/19.
//  Copyright © 2019 Pavel Ivanov. All rights reserved.
//

import UIKit

func Modul1() {
    let aInt: Int? = 1
    let bDouble: Double? = 2.1
    let cFloat: Float? = 3.3
    let strDigit: String = "4"
    let strChar: String = "Five"

    var summ = 0

    if aInt != nil {
        
        summ += aInt!
    }

    if bDouble != nil{
        
        let b = Int(bDouble!)
        summ += b
        
    }

    if cFloat != nil{
        
        let b = Int(cFloat!)
        summ += b
        
    }

    let d = Int(strDigit)

    if d != nil {
        
        summ += d!
    }

    switch strChar {
    case "One":
        summ += 1
        
    case "Two":
        summ += 2
        
    case "Three":
        summ += 3
        
    case "Four":
        summ += 4
        
    case "Five":
        summ += 5
        
    case "Six":
        summ += 6
        
    case "Seven":
        summ += 7
        
    case "Eight":
        summ += 8
        
    case "Nine":
        summ += 9
        
    case "Ten":
        summ += 10
        
    default:
        summ += 0
    }
}

