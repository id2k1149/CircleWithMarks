//
//  CircleView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct CircleView: View {
    var body: some View {
        let circleDiameter = UIScreen.main.bounds.width * 0.9
        
        Circle()
        //                .fill(Color.yellow)
            .stroke(lineWidth: 2)
            .frame(width: circleDiameter,
                   height: circleDiameter)
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
