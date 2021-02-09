//
//  UserBuilder.swift
//  PomodoroWatch
//
//  Created by Denny on 2021/02/09.
//

import Foundation

protocol UserBuilderProtocol {
    
}

struct UserBuilder {
    var name = "User"
    var statusMessage = "Hello"
    var goalMessage: String = "Empty"
    var completedCount: Int = 0
    
    mutating func setStatusMessage(message: String) {
        self.statusMessage = message
    }
    
    mutating func setGoalMessage(message: String) {
        self.goalMessage = message
    }
    
    func buildUser(name: String) -> User {
        return User(name: name, statusMessage: statusMessage, goalMessage: goalMessage, completedCount: completedCount)
    }
}

struct User {
    var name: String
    var statusMessage: String
    var goalMessage: String
    var completedCount: Int
    
    init(name: String, statusMessage: String, goalMessage: String, completedCount: Int) {
        self.name = name
        self.statusMessage = statusMessage
        self.goalMessage = goalMessage
        self.completedCount = completedCount
    }
    
    func debugUser() {
        print("name: \(name)")
        print("statusMessage: \(statusMessage)")
        print("goalMessage: \(goalMessage)")
        print("completedCount: \(completedCount)")
    }
}
