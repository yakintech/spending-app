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
    @State var spendings : [Spending] = []
    



    
    var body: some View {
        VStack{ 
            
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
                spendings.append(spending)
            }
            .padding()

            Picker("Please choose a month", selection: $selectedMonth) {
                          ForEach(months, id: \.self) {
                              Text($0.name)
                          }
                      }
            .padding()
            .border(.black)
         
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
       
            
            Spacer()
        }
        .padding()
    }
    
}

struct AddSpending_Previews: PreviewProvider {
    static var previews: some View {
        AddSpending()
    }
}








