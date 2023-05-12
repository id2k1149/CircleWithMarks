//
//  ContentView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var stepsCount = 1
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                CircleView()
                
                let circleDiameter = UIScreen.main.bounds.width * 0.9
                
                ForEach(0..<5, id: \.self) { iteration in
                    MarkView()
                        .offset(y: -circleDiameter / 2)
                        .rotationEffect(.degrees(Double(iteration) * 360 / 5))
                }
                
                Text(stepsCount.formatted())
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
            }
            
            Spacer()
            
            ButtonView(stepsCount: $stepsCount)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
