//
//  LessonView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/14/23.
//

import SwiftUI

struct LessonView: View {
    @State private var stepsCounter = 0
    
    var body: some View {
        VStack {
            Text("How to Draw a Star Step by Step")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .bold()
                .padding()
            
            ButtonView()
                .padding()
            
            ZStack {
                CircleView(progress: 0)
                
                let circleDiameter = UIScreen.main.bounds.width * 0.9
                
                ForEach(0..<5, id: \.self) { iteration in
                    MarkView()
                        .offset(y: -circleDiameter / 2)
                        .rotationEffect(.degrees(Double(iteration) * 360 / 5))
                }
                
//                Text(timer.stepsCounter.formatted())
//                    .font(.largeTitle)
//                    .bold()
//                    .foregroundColor(.blue)
            }
            
            Spacer()

            

        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}
