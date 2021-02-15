//
//  InterfaceController.swift
//  PomodoroWatch WatchKit Extension
//
//  Created by Denny on 2021/02/09.
//

import Foundation
import WatchConnectivity
import WatchKit

class InterfaceController: WKInterfaceController, WCSessionDelegate {
    var wcSession : WCSession!
    @IBOutlet weak var textLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
    }
    
    
    override func willActivate() {
        super.willActivate()
        wcSession = WCSession.default
        wcSession.delegate = self
        wcSession.activate()
    }
    
    override func didDeactivate() {
        super.didDeactivate()
    }
    
    // MARK: WCSession Methods
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        let text = message["message"] as! String
        textLabel.setText(text)
        
        WKInterfaceDevice.current().play(.click)
    }
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
}
