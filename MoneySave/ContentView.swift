//
//  ContentView.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 8.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           AddSpending()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
