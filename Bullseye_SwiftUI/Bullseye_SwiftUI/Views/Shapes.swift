//
//  Shapes.swift
//  Bullseye SwiftUI
//
//  Created by Ostrie on 8/15/21.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        VStack {
            Circle()
                //.fill(Color.blue)
                //.inset(by: 10.0)
                //.stroke(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, lineWidth: 20)
                .strokeBorder(Color.red, lineWidth: 20, antialiased: true)
                .frame(width: 200, height: 300, alignment: .topLeading)
            Capsule()
                .fill(Color.blue)
                .frame(width: 200, height: 100, alignment: .center)
            Ellipse()
                .fill(Color.blue)
                .frame(width: 200, height: 100, alignment: .center)
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.blue)
                .frame(width: 200, height: 100, alignment: .center)

        }
        .background(Color.green)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}
