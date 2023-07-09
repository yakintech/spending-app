//
//  Profile.swift
//  MoneySave
//
//  Created by Çağatay Yıldız on 9.07.2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            NavigationView {
                NavigationLink(destination: Settings()) {
                    Text("go to settings!")
                }
                .navigationTitle("Profile")
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
