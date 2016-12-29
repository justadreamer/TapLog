//
//  SessionDelegate.swift
//  TapLog
//
//  Created by Eugene Dorfman on 12/29/16.
//  Copyright © 2016 Eugene Dorfman. All rights reserved.
//

import UIKit
import WatchConnectivity

class SessionDelegate: NSObject, WCSessionDelegate {
    #if os(iOS)
        @available(iOS 9.3, *)
        public func sessionDidDeactivate(_ session: WCSession) {}
        @available(iOS 9.3, *)
        public func sessionDidBecomeInactive(_ session: WCSession) {}
    #endif

    /** Called when the session has completed activation. If session state is WCSessionActivationStateNotActivated there will be an error with more details. */
    @available(watchOS 2.2, *)
    public func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func session(_ session: WCSession, didReceiveUserInfo userInfo: [String : Any] = [:]) {
        NSLog("iOS has received data: \(userInfo)")
    }
}
