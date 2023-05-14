//
//  ButtonView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ButtonView: View {
    @Binding var currentStep: Step
    
    var body: some View {
        Button(action: buttonAction) {
            Text(currentStep == Step.start ? "Start" : "Next step")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
    
    private func buttonAction() {
        withAnimation {
            currentStep = Step(rawValue: currentStep.rawValue + 1) ?? Step.start
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(currentStep: .constant(Step.start))
    }
}
