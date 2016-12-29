//
//  TapLogTests.swift
//  TapLogTests
//
//  Created by Eugene Dorfman on 12/28/16.
//  Copyright © 2016 Eugene Dorfman. All rights reserved.
//

import XCTest
@testable import TapLog

class TapLogTests: XCTestCase {
    func testEntriesSerialization() {
        let entry = Entry(tag: "tag", date: Date())
        let dictionary = entry.dictionary
    }
}
