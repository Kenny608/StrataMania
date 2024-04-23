//
//  SettingsView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

struct SettingsView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        VStack{
            Toggle("Dark Mode", isOn: $isDarkMode)
                .padding()
        }
        .padding()
    }
}

//#Preview {
//    SettingsView(isDarkMode: $Darkmode)
//}
// Code above is broken and im unsure how to fix the compile error
