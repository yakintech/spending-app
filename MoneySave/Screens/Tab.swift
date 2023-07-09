//
//  Tab.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct Tab: View {
    var body: some View {
        TabView{
            
            SpendingMain()
                .tabItem{
                    Label("Spending", systemImage: "list.dash")
                }
            
            AddIncome()
                .tabItem{
                    Label("Income", systemImage: "square.and.pencil")
                }
            
            Reports()
                .tabItem{
                    Label("Reports", systemImage: "paperplane")
                }
            
            Profile()
                .tabItem{
                    Label("Profile", systemImage: "paperplane")
                }
            
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
