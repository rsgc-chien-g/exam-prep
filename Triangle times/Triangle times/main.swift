//
//  main.swift
//  Triangle times
//
//  Created by Student on 2016-05-27.
//  Copyright © 2016 Gilbert Chien. All rights reserved.
//

import Foundation

var angle1Value = 0
var angle2Value = 0
var angle3Value = 0
var validInput : Bool

repeat {
    


    
    while angle1Value == 0{
    print("Angle 1?", terminator:" ")
    var angle1 = readLine(stripNewline: true)
    if let Angle1Int = Int(angle1!){
        if Angle1Int > 0 && Angle1Int < 180{

         angle1Value = Angle1Int
        }
        }
    }
    while angle2Value == 0{
    print("Angle 2?", terminator:" ")
    var angle2 = readLine(stripNewline: true)
    if let Angle2Int = Int(angle2!){
        if Angle2Int > 0 && Angle2Int < 180{
         angle2Value = Angle2Int
        }
        }
    }
    while angle3Value == 0{
    print("Angle 3?", terminator:" ")
    var angle3 = readLine(stripNewline: true)
    if let Angle3Int = Int(angle3!){
        if Angle3Int > 0 && Angle3Int < 180{
         angle3Value = Angle3Int
        }
        }
    }
    

    validInput = true

    
    if (angle1Value+angle2Value+angle3Value > 180){
        print("error")
    }
    
    if (angle1Value+angle2Value+angle3Value == 180){
        if (angle1Value == angle2Value && angle2Value == angle3Value){
            print("Equilateral")
        }else if (angle1Value != angle2Value && angle1Value != angle3Value && angle2Value != angle3Value){
            print("Scalene")
        }else{
            print("Isosceles")
        }
        }
    else{
        print("error")
    }
    } while validInput == false
