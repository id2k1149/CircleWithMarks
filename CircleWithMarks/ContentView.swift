//
//  ContentView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                CircleView(progress: timer.progress)
                
                let circleDiameter = UIScreen.main.bounds.width * 0.9
                
                ForEach(0..<5, id: \.self) { iteration in
                    MarkView()
                        .offset(y: -circleDiameter / 2)
                        .rotationEffect(.degrees(Double(iteration) * 360 / 5))
                }
                
                Text(timer.stepsCounter.formatted())
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.blue)
            }
            
            Spacer()

            ButtonView(timer: timer)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
