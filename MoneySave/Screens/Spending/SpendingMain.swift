//
//  SpendignMain.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct SpendingMain: View {
    
    @State var spendings : [Spending] = []
    @State var originalSpendings : [Spending] = []
    
    var body: some View {
        VStack{
            
            AddSpending(spendings: $spendings, originalSpendings: $originalSpendings)
            
            SpendingList(spendings: $spendings, originalSpendings: $originalSpendings)
            
            Spacer()
        }
    }
}

struct SpendingMainMain_Previews: PreviewProvider {
    static var previews: some View {
        SpendingMain()
    }
}
