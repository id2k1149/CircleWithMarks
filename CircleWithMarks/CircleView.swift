//
//  CircleView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct CircleView: View {
    var progress: Double
    
    var body: some View {
        let circleDiameter = UIScreen.main.bounds.width * 0.9
        
        ZStack {
            Circle()
                .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                .frame(width: circleDiameter,
                   height: circleDiameter)
            
            Circle()
                .trim(from: 0.0, to: CGFloat(min(self.progress, 1.0)))
                .stroke(Color.blue, lineWidth: 2)
                .animation(.linear, value: progress)
                .rotationEffect(Angle(degrees: -90))
                .frame(width: circleDiameter,
                       height: circleDiameter)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(progress: 0)
    }
}
