//
//  ContentView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/4/24.
//

import SwiftUI

struct ContentView: View {
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
            SettingsView()
                .tabItem {
                    Image(systemName: "4.circle")
                    Text("Settings")
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
