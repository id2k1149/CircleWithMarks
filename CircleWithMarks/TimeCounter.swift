//
//  TimeCounter.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

/*
import Combine
import Foundation

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var stepsCounter = 1
    var progress = 0.0
    var buttonTitle = "Start"
    var timer: Timer?
    
    func startTimer() {
        if stepsCounter == 1 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateStepsCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonWasTapped()
    }
    
    @objc private func updateStepsCounter() {
        if stepsCounter < 6 {
            stepsCounter += 1
            progress += 0.2
//            progress += 1
        } else {
            killTimer()
            buttonTitle = "Reset"
        }
        objectWillChange.send(self)
    }
    
    private func buttonWasTapped() {
        if buttonTitle == "Reset" {
            stepsCounter = 1
            progress = 0
            buttonTitle = "Start"
        } else {
            buttonTitle = "Wait..."
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
*/
