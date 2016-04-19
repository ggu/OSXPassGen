//
//  Password.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/11/15.
//

import Foundation

struct Password {
  static let lowerBound = 33 // alphanumeric ASCII bounds
  static let upperBound = 126
  
  static func generate(length: Int, toExclude: String) -> String {
    var charactersToExlude: [UnicodeScalar] = []
    
    for char in toExclude.unicodeScalars {
      charactersToExlude.append(char)
    }
    
    var password = ""
    
    for _ in 0..<length {
      var passwordCharacter: UnicodeScalar
      
      repeat {
        let passwordCharacterInt = Utility.getRandomNumber(lowerBound, max: upperBound)
        passwordCharacter = UnicodeScalar(passwordCharacterInt)
      } while charactersToExlude.contains(passwordCharacter)
      
      password.append(passwordCharacter)
    }
    
    return password
  }
}
