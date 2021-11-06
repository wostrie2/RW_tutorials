//
//  TextViews.swift
//  Bullseye SwiftUI
//
//  Created by Ostrie on 8/14/21.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .bold()
            .kerning(2)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
            .foregroundColor(Color("TextColor"))
    }
}

struct BigNumberText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-1.0)
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(Color("TextColor"))
    }
    
}

struct SliderLabelText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .frame(width: 35.0)
    }
}


struct LabelText: View {
    var text: String
    
    var body: some View {
     Text(text)
        .font(.caption)
        .kerning(1.5)
        .foregroundColor(Color("TextColor"))
        .bold()
    }
    
}



struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            let instructions: String = "🎯🎯🎯\nPut the bullseye as close as you can to"
            InstructionText(text: instructions)
            BigNumberText(text: "999")
            SliderLabelText(text: "99")
            LabelText(text: "SCORE")
        }
    }
}


