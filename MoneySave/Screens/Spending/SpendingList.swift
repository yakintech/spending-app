//
//  SpendingList.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import SwiftUI

struct SpendingList: View {
    @Binding var spendings : [Spending]
    @Binding var originalSpendings : [Spending]
    
    @State var searchDate : Date = Date.now
    
    var body: some View {
        
        VStack{
            
            DatePicker(selection: $searchDate, in: ...Date.now, displayedComponents: .date) {
                          Text("Search by date")
                      }
            .padding()
            .onChange(of: searchDate){item in
                
                spendings = originalSpendings.filter({getDayNumber(date: $0.date) == getDayNumber(date: item) && getMonthNumber(date: $0.date) == getMonthNumber(date: item) && getYearNumber(date: $0.date) == getYearNumber(date: item)})
                 
            }
            
            ForEach(spendings, id:\.self) { item in
                HStack{
             
                    Text(dateToString(date: item.date))
                        .padding(.leading)
                    Text(item.category)
                        .padding(.leading)
                    Text(item.amount)
                        .padding(.leading)
               
                }
            }
        }
    }
}

