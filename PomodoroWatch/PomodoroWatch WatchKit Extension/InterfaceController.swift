//
//  InterfaceController.swift
//  PomodoroWatch WatchKit Extension
//
//  Created by Denny on 2021/02/09.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        WKInterfaceDevice.current().play(.notification)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }

}
