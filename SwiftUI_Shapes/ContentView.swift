//
//  ContentView.swift
//  SwiftUI_Shapes
//
//  Created by rajasekhar pidikiti on 07/06/24.
//

import SwiftUI

/// Description
struct ContentView: View {
    var body: some View {
        VStack {
            //Circle()
            //Ellipse()
            //Capsule()
//            Rectangle()
//                //.frame(width: 200, height: 200)
//                .fill(Color.init(hex: 002147))// oxford blue
//            
//                //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//                //.background(Color.gray)
//                //.stroke(Color(red: 228/255, green: 228/255, blue: 228/255))
//               // .stroke()
//               // .stroke(Color(red: 228/255, green: 228/255, blue: 228/255), lineWidth: 4)
//                //.stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .square, dash: [50]))
//                .frame(width: 200, height: 200)
            

            MultipleStrockes()
            
            
//            UnevenRoundedRectangle(cornerRadii: .init(topLeading: 50, topTrailing: 50)).fill(.orange)
            
                
        }
        .padding()
        .background(Color.gray)
        .ignoresSafeArea()
        
    }
}
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

#Preview {
    ContentView()
}

struct MultipleStrockes: View {
    var body: some View {
        Circle()
            .stroke(.blue, lineWidth: 45)
            .stroke(.green, lineWidth: 35)
            .stroke(.yellow, lineWidth: 25)
            .stroke(.orange, lineWidth: 15)
            .stroke(.red, lineWidth: 5)
            .frame(width: 150, height: 150)
    }
}
