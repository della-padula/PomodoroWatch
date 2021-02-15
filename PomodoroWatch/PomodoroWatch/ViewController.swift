//
//  ViewController.swift
//  PomodoroWatch
//
//  Created by Denny on 2021/02/09.
//

import SnapKit
import UIKit
import WatchConnectivity

class ViewController: UIViewController {
    var wcSession : WCSession! = nil
    private var textLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
        
        setMainLayout()
        setViewProperties()
        
        // Sample Text To Watch
        let message = ["message":"Hello World"]
        wcSession.sendMessage(message, replyHandler: nil) { (error) in
            print(error.localizedDescription)
        }
        
        var userBuilder = UserBuilder()
        userBuilder.setGoalMessage(message: "New Goal")
        userBuilder.setStatusMessage(message: "New Status Message")
        
        let dennyUser = userBuilder.buildUser(name: "Denny")
        dennyUser.debugUser()
    }
    
    private func setMainLayout() {
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    private func setViewProperties() {
        view.backgroundColor = .white
        textLabel.font = .systemFont(ofSize: 14)
        textLabel.textColor = .black
        textLabel.text = "Hello World"
    }
    
    private func notifyToWatch() {
        
    }
    
}

extension ViewController: WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
}

