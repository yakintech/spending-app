//
//  Settings.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                Text("Setting Page")
                    .font(.largeTitle)
                
                NavigationLink(destination: Settings2()) {
                    Text("go to settings2!")
                }
                .navigationTitle("Settings")
            }
          
        }
        
       
            
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
