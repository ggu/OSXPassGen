//
//  PassGenViewController.swift
//  OSXPassGen
//
//  Created by Gabriel Uribe on 12/11/15.
//  Copyright © 2015 Gabriel Uribe. All rights reserved.
//

import Cocoa

class PassGenViewController: NSViewController {

  @IBOutlet weak var lengthTextField: NSTextField!
  @IBOutlet weak var charsToExcludeTextField: NSTextField!
  @IBOutlet weak var passwordScrollView: NSScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
      //let appearance = NSUserDefaults.standardUserDefaults().stringForKey("AppleInterfaceStyle")
    }
    
  @IBAction func goButtonAction(sender: AnyObject) {
  }
}
