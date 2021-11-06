//
//  ContentView.swift
//  Bullseye SwiftUI
//
//  Created by Ostrie on 6/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    let testValue = 25
    let testValue2 = 26

    
    var body: some View {
        ZStack {
            BackgroundView(game: $game)
            VStack {
                InstructionsView(game: $game)
                SliderView(sliderValue: $sliderValue)
                HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)

            }
            
        }
        printv("testValue = \(testValue)")
        
        let _ = print("hi! \(testValue2)")
    }

}



struct InstructionsView: View {
    
    @Binding var game: Game
    
    var body: some View {
        
        VStack {
            let instructions: String = "🎯🎯🎯\nPut the bullseye as close as you can to"
            
            InstructionText(text: instructions)
                .padding(.leading, 30.0)
                .padding(.trailing, 30.0)
            
            BigNumberText(text: String(game.target))
        }
    }
}


struct SliderView: View {
    @Binding var sliderValue: Double
    var body: some View {
        HStack {
            SliderLabelText(text: "1")
            Slider(value: $sliderValue, in: 1.0...100.0)
            SliderLabelText(text: "100")
            
        }
        .padding(20.0)
    }
}


struct HitMeButton: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    var body: some View {
        Button(action: {
            self.alertIsVisible = true
        }) {
            Text("Hit Me".uppercased())
                .bold()
                .font(.title3)
        }
        .padding(20.0)
        .background(ZStack {
            Color("ButtonColor")
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.4), Color.clear]), startPoint: .top, endPoint: .bottom)
        })
        .foregroundColor(.white)
        .cornerRadius(21.0)
        .overlay(
            RoundedRectangle(cornerRadius: 21.0)
                .strokeBorder(Color.white, lineWidth: 2.0)
        )
        .alert(isPresented: $alertIsVisible, content: {
            let roundedValue: Int = Int(self.sliderValue.rounded())
            let points = game.points(sliderValue: roundedValue)
            return Alert(title: Text("Hello there!"), message: Text("the value of the slider is \(roundedValue).\n" + "You scored \(points) points this round."), dismissButton:
                            .default(Text("Awesome")) {
                game.startNewRound(points: points)
            })
        })
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .preferredColorScheme(.dark)
        
    }
}
