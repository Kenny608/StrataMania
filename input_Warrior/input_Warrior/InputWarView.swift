//
//  InputWarView.swift
//  input_Warrior
//
//  Created by Kenny Luchau on 4/9/24.
//

import SwiftUI

struct InputWarView: View {
    var body: some View {
        VStack {
            // Upper half of the screen
            VStack {
                Text("Upper Half")
                    .font(.title)
                Spacer()
            }
//            Center?
            VStack{
                Text("Some Centered text")
            }
            
            // Lower half of the screen
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    // Up Arrow
                    VStack {
                        Image(systemName: "arrow.up")
                            .font(.title)
                            .foregroundColor(.white)
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
                        Image(systemName: "arrow.left")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .alignmentGuide(.leading) { d in d[HorizontalAlignment.center] }
                    Spacer()
                    
                    // Center space
//                    Spacer()
                    
                    // Right Arrow
                    VStack {
                        Image(systemName: "arrow.right")
                            .font(.title)
                            .foregroundColor(.white)
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
                        Image(systemName: "arrow.down")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .frame(width: 50, height: 50)
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .alignmentGuide(.bottom) { d in d[VerticalAlignment.center] }
                    Spacer()
                }
                
//                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        InputWarView()
    }
}
