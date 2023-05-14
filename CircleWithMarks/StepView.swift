//
//  StepView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/14/23.
//

import SwiftUI

enum Step: Int, CaseIterable {
    case start = 0
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    
    var instructions: String {
        switch self {
        case .start:
            return ""
        case .one:
            return "#1 Draw a small circle. It’s important to leave enough space around this circle."
        case .two:
            return "#2 Draw a small circle. It’s important to leave enough space around this circle."
        case .three:
            return "#3 Draw a small circle. It’s important to leave enough space around this circle."
        case .four:
            return "#4 Draw a small circle. It’s important to leave enough space around this circle."
        case .five:
            return "#5 Draw a small circle. It’s important to leave enough space around this circle."
        case .six:
            return "#6 Draw a small circle. It’s important to leave enough space around this circle."
        }
    }
}

struct StepView: View {
    @Binding var currentStep: Step
    
    var body: some View {
        if currentStep.rawValue > 0 {
            VStack (alignment: .leading) {
                Text("Step \(currentStep.rawValue)")
                    .font(.largeTitle)
                    .bold()
                   
                Text(currentStep.instructions)
            }
        }
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        StepView(currentStep: .constant(Step(rawValue: 1) ?? Step.one))
    }
}
