//
//  ContentView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "eye.trianglebadge.exclamationmark")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome to Input Warrior!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
