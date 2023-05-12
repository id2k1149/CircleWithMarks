//
//  TimeCounter.swift
//  CircleWithMarks
//
//  Created by Max Franz Immelmann on 5/12/23.
//

import Combine
import Foundation

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    var stepsCounter = 1
    var timer: Timer?
    
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(updateStepsCounter),
            userInfo: nil,
            repeats: true
        )
    }
    
    @objc private func updateStepsCounter() {
        if stepsCounter < 5 {
            stepsCounter += 1
        } else {
            killTimer()
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
}
