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
