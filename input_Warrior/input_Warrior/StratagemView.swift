//
//  SettingsView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

struct StratagemView: View {
    let stratagems = stratagemList
    var body: some View {
        NavigationView {
            List {
                ForEach(stratagems, id: \.self) { stratagems in
                    NavigationLink(destination: Text(stratagems)){
                        Image(systemName: "arrowkeys.fill")
                        Text(stratagems)
                    }.padding()
                }
                .navigationTitle("Stratagems")
            }
        }
    }
}

#Preview {
    SettingsView()
}
