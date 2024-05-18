//
//  InputWarView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

struct InputWarView: View {
    let Stratagems = StrataBase
    @State var randomStrategem = StrataBase.randomElement()!
    @State var uInput = ""
    @State var correctInput = false
    @State var correctinaerow = 0
    
    var body: some View {
        VStack {
            // Upper half of the screen
            VStack {
                Text(" Stratagems in a row \(correctinaerow)")
                    .font(.title)
                Spacer()
            }
            
            // Center?
            VStack {
                strataDisplay(stratacall: randomStrategem)
                
                Button(action: {
                    randomStrategem = StrataBase.randomElement()!
                    uInput = ""
                    correctInput = randomStrategem.input.hasPrefix(uInput)
                    correctinaerow = 0
                }) {
                    Text("Clear Input")
                }
                .padding()
                
                Text("\(uInput)")
                
                if correctInput {
                    Text("Yes")
                        .foregroundColor(.green)
                } else {
                    Text("No")
                        .foregroundColor(.red)
                }
            }
            
            // Lower half of the screen
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    // Up Arrow
                    ArrowButton(imageName: "arrow.up", buttonAction: {
                        uInput += "1"
                        updateCorrectness()
                    })
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    // Left Arrow
                    ArrowButton(imageName: "arrow.left", buttonAction: {
                        uInput += "3"
                        updateCorrectness()
                    })
                    Spacer()
                    // Right Arrow
                    ArrowButton(imageName: "arrow.right", buttonAction: {
                        uInput += "4"
                        updateCorrectness()
                    })
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    // Down Arrow
                    ArrowButton(imageName: "arrow.down", buttonAction: {
                        uInput += "2"
                        updateCorrectness()
                    })
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func updateCorrectness() {
        correctInput = randomStrategem.input.hasPrefix(uInput)
        
        if (randomStrategem.input == uInput)
        {
            randomStrategem = StrataBase.randomElement()!
            uInput = ""
            correctinaerow += 1
        }
    }
}

struct ArrowButton: View {
    let imageName: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Image(systemName: imageName)
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 50, height: 50)
        .background(Color.yellow)
        .cornerRadius(10)
    }
}

struct strataDisplay: View {
    let stratacall: Stratagem
    
    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            Text("\(stratacall.title)")
                .font(.largeTitle)
            Text("\(stratacall.input)")
                .font(.headline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InputWarView()
    }
}
