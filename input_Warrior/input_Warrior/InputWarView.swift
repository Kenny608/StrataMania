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
    @State var pFeedback = ""
    
    var body: some View {
        VStack {
            // Upper half of the screen
            VStack {
                Text(" Stratagems in a row \(correctinaerow)")
                    .font(.title)
                Spacer()
                Text("\(pFeedback)")
                    .font(.title2)
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
                    pFeedback = "You Got The Last One Wrong"
                }) {
                    Text("Reset")
                }
                .padding()
                Text("\(uInput)")
                    .font(.title2)
                
                if (uInput != ""){
                    if correctInput {
                        Text("Correct")
                            .foregroundColor(.green)
                    } else {
                        Text("Wrong")
                            .foregroundColor(.red)
                    }
                }
                else{
                    
                }
            }
            
            // Lower half of the screen
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    // Up Arrow
                    NumberButton(number: "1", buttonAction: {
                        uInput += "1"
                        updateCorrectness()
                    })
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    // Left Arrow
                    NumberButton(number: "3", buttonAction: {
                        uInput += "3"
                        updateCorrectness()
                    })
                    Spacer()
                    // Right Arrow
                    NumberButton(number: "4", buttonAction: {
                        uInput += "4"
                        updateCorrectness()
                    })
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    // Down Arrow
                    NumberButton(number: "2", buttonAction: {
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
        
        if(pFeedback != ""){
            pFeedback = ""
        }
        if (randomStrategem.input == uInput)
        {
            randomStrategem = StrataBase.randomElement()!
            uInput = ""
            correctinaerow += 1
            pFeedback = "You Got The Previous One Right!"
        }
    }
}

struct NumberButton: View {
    let number: String
    let buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Text(number)
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
                .font(.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InputWarView()
    }
}
