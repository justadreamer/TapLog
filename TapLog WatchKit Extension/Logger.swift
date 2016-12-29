//
//  Logger.swift
//  TapLog
//
//  Created by Eugene Dorfman on 12/28/16.
//  Copyright © 2016 Eugene Dorfman. All rights reserved.
//

import Foundation
import WatchConnectivity
class Logger {
    var entries: [Entry] = []
    func log() {
        send(entry: Entry())
    }
    
    func send(entry: Entry) {
        let userInfo = [entryKey: entry.dictionary]
        WCSession.default().transferUserInfo(userInfo)
    }
}
