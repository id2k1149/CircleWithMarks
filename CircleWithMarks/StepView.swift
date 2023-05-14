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
            return ""
        case .two:
            return "Draw a relatively big circle of an arbitrary radius."
        case .three:
            return "Add a vertical line that is going from the central point of the circle."
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
        if currentStep.rawValue > 1 {
            VStack (alignment: .leading) {
                Text("Step \(currentStep.rawValue - 1)")
                    .font(.largeTitle)
                    .bold()
                   
                Text(currentStep.instructions)
            }
        }
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        StepView(currentStep: .constant(Step(rawValue: 2) ?? Step.one))
    }
}
