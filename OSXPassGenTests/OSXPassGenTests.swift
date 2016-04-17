//
//  OSXPassGenTests.swift
//  OSXPassGenTests
//
//  Created by Gabriel Uribe on 12/11/15.
//

import XCTest
@testable import OSXPassGen

class OSXPassGenTests: XCTestCase {
  
  private static let numIterationsToTest = 100
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testPasswordGenerateNoExlude() {
    for i in 0..<OSXPassGenTests.numIterationsToTest {
      let password = Password.generate(i, toExclude: "")
      XCTAssert(password.characters.count == i)
    }
  }
  
  func testPasswordGenerateOneCharToExclude() {
    for i in 0..<OSXPassGenTests.numIterationsToTest {
      let charToExclude = UnicodeScalar(i)
      let stringToExclude = charToExclude.description
      print(stringToExclude)
      let password = Password.generate(10000, toExclude: stringToExclude)
      XCTAssert(!password.containsString(stringToExclude))
    }
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock {
      // Put the code you want to measure the time of here.
    }
  }
}
