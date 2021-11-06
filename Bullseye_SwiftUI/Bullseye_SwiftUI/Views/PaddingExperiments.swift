//
//  PaddingExperiments.swift
//  Bullseye SwiftUI
//
//  Created by Ostrie on 8/21/21.
//

import SwiftUI

struct PaddingExperiments: View {
    var body: some View {
        
        let testValue = 6
        
        VStack {
            Text("Home")
            Text("Options")
                .offset(y: 15)
                .border(Color.red)
                .padding(.bottom, 5)
            Text("Help")
        }
        
        HStack {
            Text("Before")
                .background(Color.red)
                .offset(y: 15)
            Text("After")
                .offset(y: 10
                )
                .background(Color.red)
        }
        
        VStack {
            Text("Hacking with swift")
                .font(.title)
                .background(Color.red)
                .foregroundColor(.white)
                .padding()
            Spacer()
            Text("Hacking with swift")
                .font(.title)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
            
            Text("Forecast: Sun")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding(4)
                .background(Color.red)
                .padding(6)
                .background(Color.orange)
                .padding(10)
                .background(Color.yellow)
            
            Text("Hacking with Swift")
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.green, lineWidth: 20)
                )
            
            Circle()
                .strokeBorder(Color.red, lineWidth: 50)
                .frame(width: 200, height: 200)
                .padding()
            
            let _ = print("hi!")
            
            printv("Hi from printv! testValue = \(testValue)")
            
            Circle()
                .stroke(Color.blue, lineWidth: 50)
                .frame(width: 200, height: 200)
                .padding(40)
            
            Spacer()
            
        }
        .padding()
        .border(Color.green, width: 40)
        
        
        
    }
}

extension View {
    func printv( _ data : Any)-> EmptyView{
           print(data)
           return EmptyView()
          }
}

struct PaddingExperiments_Previews: PreviewProvider {
    static var previews: some View {
        PaddingExperiments()
    }
}
