//
//  DateFormatter.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import Foundation



func dateToString(date:Date) -> String{
   
    let formatter = DateFormatter()
   //formatter.dateFormat =  "d MMMM y" // 2 Ocak 2023
   //formatter.dateFormat = "dd.MM.y" // 02.01.2023
   //formatter.dateFormat = "dd MMMM y EEEE"  // 02 Ocak 2023 Perşembe
    formatter.dateFormat = "dd MMMM EEEE"  // 02 Ocak Perşembe
    
    let result = formatter.string(from: date)
    
    return result;
    
}


func getDayNumber(date:Date) -> Int{

    let calendar = Calendar.current
    let components = calendar.dateComponents([.day], from: date)
    let day = components.day
    
    return day ?? 01
}


func getMonthNumber(date:Date) -> Int{

    let calendar = Calendar.current
    let components = calendar.dateComponents([.month], from: date)
    let month = components.month
    
    return month ?? 01
}


func getYearNumber(date:Date) -> Int{

    let calendar = Calendar.current
    let components = calendar.dateComponents([.year], from: date)
    let year = components.year
    
    return year ?? 01
}


