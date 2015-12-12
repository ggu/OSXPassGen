//
//  Utility.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/12/15.
//  Copyright © 2015 Gabriel Uribe. All rights reserved.
//

import Foundation

struct Utility
{
  static func getRandomNumber(min: Int, max: Int) -> Int
  {
    return min + Int(arc4random_uniform(UInt32(max - min + 1)))
  }
}
