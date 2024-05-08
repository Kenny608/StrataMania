//
//  ContentView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var Darkmode = false
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Home")
                }
            StratagemView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Strataview")
                }
            InputWarView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("InputWar")
                }
            SettingsView(isDarkMode: $Darkmode)
                .tabItem {
                    Image(systemName: "4.circle")
                    Text("Settings")
                }
        }
        .environment(\.colorScheme, Darkmode ? .dark : .light)
    }
}

#Preview {
    ContentView()
}
