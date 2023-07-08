//
//  Spending.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import Foundation


struct Spending : Hashable
{
    var date : Date = Date.now
    var amount =  ""
    var note : String = ""
    var category : String = ""
    var account : String = ""
    
    //var category : Category = Category(name: "")
    //var account : Account = Account(type: "")
}
