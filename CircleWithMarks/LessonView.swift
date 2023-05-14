//
//  LessonView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/14/23.
//

import SwiftUI

struct LessonView: View {
    @State private var currentStep = Step.start
    
    var body: some View {
        VStack {
            Text("How to Draw a Star Step by Step")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .bold()
                .padding()
            
            ButtonView(currentStep: $currentStep)
                .padding(.bottom)
            
            ZStack {
                CircleView(progress: 0)
                
                let circleDiameter = UIScreen.main.bounds.width * 0.9
                
                ForEach(0..<5, id: \.self) { iteration in
                    MarkView()
                        .offset(y: -circleDiameter / 2)
                        .rotationEffect(.degrees(Double(iteration) * 360 / 5))
                }
            }
            
            ZStack {
                StepView(currentStep: $currentStep)
            }
            .frame(width: 350, height: 150)
        }
    }
}

struct LessonView_Previews: PreviewProvider {
    static var previews: some View {
        LessonView()
    }
}
