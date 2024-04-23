//
//  StratagemView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

class Stratagems: Identifiable {
    let id = UUID()
    var name: String
    var classification: [Stratagems]?
    init(name: String, classification: [Stratagems]? = nil) {
        self.name = name
        self.classification = classification
    }
}
struct StratagemView: View {
    var Animals: [Stratagems] = [
        Stratagems(name: "Backpacks", classification: [
            Stratagems(name: "Offensive", classification: [
                Stratagems(name: "Guard Dog"),
                Stratagems(name: "Guard Dog Rover"),
            ]),
            Stratagems(name: "Defensive", classification: [
                Stratagems(name: "Shield Generator"),
                Stratagems(name: "Balistic Shield"),
                Stratagems(name: "Supply Pack"),
                Stratagems(name: "Jump Pack"),
            ]),
        ]),
        Stratagems(name: "Orbitals", classification: [
            Stratagems(name: "Offensive", classification: [
                Stratagems(name: "Precision Strike"),
                Stratagems(name: "Airbust Strike"),
                Stratagems(name: "120MM HE Barrage"),
                Stratagems(name: "380MM HE Barrage"),
                Stratagems(name: "Walking Barrage"),
                Stratagems(name: "Lazer"),
                Stratagems(name: "Railcannon Strike"),
            ]),
            Stratagems(name: "Utility", classification: [
                Stratagems(name: "Gas Strike"),
                Stratagems(name: "EMS Strike"),
                Stratagems(name: "Smoke Strike"),
            ]),
        ]),
        Stratagems(name: "Eagle", classification: [
            Stratagems(name: "Offensive", classification: [
                Stratagems(name: "Precision Strike"),
                Stratagems(name: "Airbust Strike"),
                Stratagems(name: "120MM HE Barrage"),
                Stratagems(name: "380MM HE Barrage"),
                Stratagems(name: "Walking Barrage"),
                Stratagems(name: "Lazer"),
                Stratagems(name: "Railcannon Strike"),
            ]),
            Stratagems(name: "Utility", classification: [
                Stratagems(name: "Gas Strike"),
                Stratagems(name: "EMS Strike"),
                Stratagems(name: "Smoke Strike"),
                Stratagems(name: "Jump Pack"),
            ]),
        ]),
    ]
    var body: some View {
        VStack{
            Text("eee")
            List {
                OutlineGroup(Animals, id: \.id, children: \.classification) { creature in
                    Text(creature.name)
                }
            }
        }
    }
}


#Preview {
    StratagemView()
}

