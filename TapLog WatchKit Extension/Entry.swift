//
//  Entry.swift
//  TapLog
//
//  Created by Eugene Dorfman on 12/28/16.
//  Copyright © 2016 Eugene Dorfman. All rights reserved.
//

import Foundation

let entryKey = "entry"

struct Entry : CustomStringConvertible {
    var tag: String = "default"
    var date: Date = Date()
    
    static var _dateFormatter: DateFormatter?
    static var dateFormatter: DateFormatter {
        if Entry._dateFormatter == nil {
            let dateFormatter = DateFormatter()
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
            dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
            Entry._dateFormatter = dateFormatter
        }
        return Entry._dateFormatter!
    }
    
    var description: String {
        return "\(tag) \(date)"
    }
    
    var dictionary: [String: String] {
        let tagKey = "tag"
        let dateKey = "date"
        
        return [tagKey: tag, dateKey: Entry.dateFormatter.string(from: date)]
    }
}
