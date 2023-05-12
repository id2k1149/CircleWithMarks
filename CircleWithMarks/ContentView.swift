//
//  ContentView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @State private var progress: Double = 0.0
    
    var body: some View {
        VStack {
            Spacer()
            
            ZStack {
                CircleView(progress: $progress)
                
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
            
            Button("Start") {
                withAnimation {
                    progress += 0.2
                }
            }
            
            ButtonView(timer: timer)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
