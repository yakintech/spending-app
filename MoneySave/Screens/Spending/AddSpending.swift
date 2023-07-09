//
//  AddSpending.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import SwiftUI
import Foundation

struct AddSpending: View {
    
    var months : [Month] = [Month(name: "January", number: 01),Month(name: "February", number: 02),Month(name: "March", number: 03),Month(name: "April", number: 04),Month(name: "May", number: 05),Month(name: "June", number: 06),Month(name: "July", number: 07),Month(name: "August", number: 08),Month(name: "September", number: 09),Month(name: "October", number: 10),Month(name: "November", number: 11),Month(name: "December", number: 12)]
    
    @State var selectedMonth = Month()
    
    var categories = ["Food", "Social Life", "Transport","Others"]
    var types = ["Cach", "Credit Card"]
    
    @State var date : String = ""
    
    @State var spending : Spending = Spending()
    
    @Binding var spendings : [Spending]
    @Binding var originalSpendings : [Spending]

    
    @State var searchByNote = ""


    
    var body: some View {
        VStack{
            ScrollView{
                
                DatePicker(selection: $spending.date, in: ...Date.now, displayedComponents: .date) {
                              Text("Select a date")
                          }
                .padding()
                
                
                TextField("Amount: ", text: $spending.amount)
                    .padding()
                    .border(.black)
                
                Picker("Please choose a category", selection: $spending.category) {
                              ForEach(categories, id: \.self) {
                                  Text($0)
                              }
                          }
                .padding()
                .border(.black)
                
                Picker("Please choose account type", selection: $spending.account) {
                              ForEach(types, id: \.self) {
                                  Text($0)
                              }
                          }
                .padding()
                .border(.black)
                
                TextField("Note: ", text: $spending.note)
                    .padding()
                    .border(.black)
                
                
                Button("Add"){
                
                    originalSpendings.append(spending)
                    spendings.append(spending)

                }
                .padding()
                
                Picker("Please choose a month", selection: $selectedMonth) {
                              ForEach(months, id: \.self) {
                                  Text($0.name)
                              }
                          }
                .onChange(of: selectedMonth){item in
                    //picker onchange oldugunda o aya ait harcamaları listeleyeceğim
                    spendings = originalSpendings.filter({getMonthNumber(date: $0.date) == item.number})
                }
                
                
                .padding()
                .border(.black)
                
                
            }
        }
        .padding()
    }
    
}

