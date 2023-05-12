//
//  ButtonView.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
    }
}

//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(timer: 1)
//    }
//}
