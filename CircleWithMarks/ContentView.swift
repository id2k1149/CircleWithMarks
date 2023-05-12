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
            
            let circleDiameter = UIScreen.main.bounds.width * 0.9
            
            ForEach(0..<5, id: \.self) { iteration in
                MarkView()
                    .offset(y: -circleDiameter / 2)
                    .rotationEffect(.degrees(Double(iteration) * 360 / 5))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
