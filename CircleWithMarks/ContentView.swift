//
//  ContentView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            CircleView()
        }
    }
    
    struct CircleView: View {
        var body: some View {
            let circleDiameter = UIScreen.main.bounds.width * 0.9
           
            Circle()
//                .fill(Color.yellow)
                .stroke(lineWidth: 2)
                .frame(width: circleDiameter,
                       height: circleDiameter)
            
            ForEach(0..<5, id: \.self) { iteration in
                Mark(circleDiameter: circleDiameter)
                    .rotationEffect(.degrees(Double(iteration) * 360 / 5))
            }
        }
    }
    
    struct Mark: View {
        var circleDiameter: CGFloat
        
        var body: some View {
            Rectangle()
                .fill(Color.black)
                .frame(width: 2,
                       height: 20)
                .offset(y: -circleDiameter / 2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
