//
//  InputWarView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

struct InputWarView: View {
    let Stratagems = StrataBase
    
    var body: some View {
        VStack {
            // Upper half of the screen
            VStack {
                Text("Upper Half")
                    .font(.title)
                Spacer()
            }
            // Center?
            VStack{
                ForEach(Stratagems) { stratagem in
                    VStack{
                        // strataDisplay(stratacall: stratagem )
                        Text("IM LOST IN THIS PART")
                    }
                }
                
            }
            
            // Lower half of the screen
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    // Up Arrow
                    VStack {
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.up")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.red)
                    .cornerRadius(10)
                    .alignmentGuide(.top) { d in d[VerticalAlignment.center] }
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    // Left Arrow
                    VStack {
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.left")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .alignmentGuide(.leading) { d in d[HorizontalAlignment.center] }
                    Spacer()
                    
                    // Right Arrow
                    VStack {
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.green)
                    .cornerRadius(10)
                    .alignmentGuide(.trailing) { d in d[HorizontalAlignment.center] }
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    // Down Arrow
                    VStack {
                        Button{
                            
                        }label: {
                            Image(systemName: "arrow.down")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                        
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .alignmentGuide(.bottom) { d in d[VerticalAlignment.center] }
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct strataDisplay: View {
    let stratacall: Stratagem
    var body: some View {
        VStack(alignment: .center, spacing: 25){
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
